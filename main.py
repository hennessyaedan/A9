import sqlite3

"""
Assignment 9 - Database Explorer Tool

This expands on a bash-script, command-line interface by using Python and
SQLite in order to help a user navigate table creation, population, and querying.
While it still follows a command-line interface format instead of a web-based GUI,
it now includes more functionalities such as record searching and modification.
"""

DB_NAME = "store.db"

def pause():
    input("\nPress Enter to continue...")

# Splits queries in the query file and runs them individually,
# the results are printed out in an easy to read format.
def run_sql_file(filename):
    conn = sqlite3.connect(DB_NAME)
    cur = conn.cursor()
    sql = open(filename).read()
    
    # Since SQLite doesn't actually output any SQL results, we need to split it manually for
    # our SELECT qwueries.
    for stmt in [s.strip() for s in sql.split(';') if s.strip()]:
        cur.execute(stmt)
   
        # As long as the statement contains SELECT, we format the output accordingly.
        if cur.description:
            headers = [h[0] for h in cur.description]
            rows = cur.fetchall()
            print("\n" + " | ".join(headers))
            print("-" * (sum(len(h) for h in headers) + 3*(len(headers)-1)))
   
            for row in rows:
                print(" | ".join(str(c) for c in row))
            print(f"\n{len(rows)} row(s).\n")
   
        else:
            conn.commit()
   
    conn.close()

# Allows user to select a table and then select a column from that table
# and then search the table by that column using LIKE.
def search_table():
    conn = sqlite3.connect(DB_NAME)
    cur = conn.cursor()

    cur.execute("SELECT name FROM sqlite_master WHERE type='table'")
    tables = [r[0] for r in cur.fetchall()]
    print("\nTables:")
    
    for i, t in enumerate(tables, 1): print(f"{i}) {t}")
    
    table = tables[int(input("Pick table #: "))-1]
    
    # Without PRAGMA, we wouldn't be able to get any column names for our table.
    cur.execute(f"PRAGMA table_info({table})")
    cols = [r[1] for r in cur.fetchall()]
    
    print("Columns:")
    for i, c in enumerate(cols, 1): print(f"{i}) {c}")
    
    col = cols[int(input("Pick column #: "))-1]
    term = input("Search term: ")
    
    # Sets the user-input as the parameter and queries accordingly.
    cur.execute(f"SELECT * FROM {table} WHERE {col} LIKE ?", (f"%{term}%",))
    
    rows = cur.fetchall()
    headers = [h[0] for h in cur.description]
    print("\n" + " | ".join(headers))
    print("-" * (sum(len(h) for h in headers) + 3*(len(headers)-1)))
    
    for r in rows: print(" | ".join(str(c) for c in r))
    print(f"\n{len(rows)} row(s).\n")
    
    conn.close()

# Allows the user to select a table, then a row in that table and then
# choose to either update one of the columns or delete the row.
def modify_row():
    conn = sqlite3.connect(DB_NAME)
    cur = conn.cursor()
    
    # This reads all the tables in the database.
    cur.execute("SELECT name FROM sqlite_master WHERE type='table'")
    tables = [r[0] for r in cur.fetchall()]
    print("\nTables:")

    for i, t in enumerate(tables, 1): print(f"{i}) {t}")
    
    table = tables[int(input("Pick table #: "))-1]

    # Alows users to select a table.
    cur.execute(f"SELECT * FROM {table}")
    rows = cur.fetchall()
    headers = [h[0] for h in cur.description]
    
    print("\n" + " | ".join(headers))
    print("-" * (sum(len(h) for h in headers) + 3*(len(headers)-1)))
    
    
    for i, row in enumerate(rows, 1):
        print(f"{i}) " + " | ".join(str(c) for c in row))

    row_num = int(input("\nRow # to edit/delete: ")) - 1
    
    # First column serves as the primary key.
    row_id = rows[row_num][0]

    print("\n1) Update")
    print("2) Delete")
    action = input("Choose: ")

    if action == "1":
    
        cur.execute(f"PRAGMA table_info({table})")
        cols = [r[1] for r in cur.fetchall()]
        print("\nColumns:")
    
        for i, c in enumerate(cols, 1): print(f"{i}) {c}")
    
        col_num = int(input("Column # to update: ")) - 1
        col = cols[col_num]
        new_val = input("New value: ")
    
        cur.execute(f"UPDATE {table} SET {col} = ? WHERE rowid = ?", (new_val, row_id))
        print("Updated.")
    
    elif action == "2":
    
        cur.execute(f"DELETE FROM {table} WHERE rowid = ?", (row_id,))
        print("Deleted.")

    conn.commit()
    conn.close()
    
def read_records():
    conn = sqlite3.connect(DB_NAME)
    cur = conn.cursor()

    cur.execute("SELECT name FROM sqlite_master WHERE type='table'")
    tables = [t[0] for t in cur.fetchall()]

    print("\nTables:")
    for i, t in enumerate(tables, 1):
        print(f"{i}) {t}")

    table = tables[int(input("Pick table #: ")) - 1]

    cur.execute(f"SELECT * FROM {table}")
    rows = cur.fetchall()
    # Pretty much lists all our column names as our headers.
    headers = [h[0] for h in cur.description]

    print("\n" + " | ".join(headers))
    print("-" * (sum(len(h) for h in headers) + 3*(len(headers)-1)))

    for r in rows:
        print(" | ".join(str(c) for c in r))

    print(f"\n{len(rows)} row(s).\n")
    conn.close()

# Menu which allows the user to select the function they would like to perform.
def main_menu():
    while True:
        print("\n==============================================================")
        print("                  Database Explorer")
        print("--------------------------------------------------------------")
        print("1) Drop Tables")
        print("2) Create Tables")
        print("3) Populate Tables")
        print("4) Query Tables")
        print("5) Search Table")
        print("6) Update/Delete Row")
        print("7) Read Records")
        print("E) Exit Program")
        print("--------------------------------------------------------------")
        choice = input("Choose: ").strip()
        
        if choice == "1":
            run_sql_file("drop_tables.sql")
            print("Tables dropped.")
            pause()
            
        elif choice == "2":
            run_sql_file("create_tables.sql")
            print("Tables created.")
            pause()
            
        elif choice == "3":
            run_sql_file("populate_tables.sql")
            print("Tables populated.")
            pause()
            
        elif choice == "4":
            print("Running queries...\n")
            run_sql_file("query_tables.sql")
            pause()
            
        elif choice == "5":
            search_table()
            pause()
            
        elif choice == "6":
            modify_row()
            pause()
            
        elif choice == "7":
            read_records()
            pause()
            
        elif choice.upper() == "E":
            print("Exiting...")
            break
        
        else:
            print("Invalid.")
            pause()

print("Starting Database Tool...")
main_menu()
