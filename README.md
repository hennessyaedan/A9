# A9
Database Explorer Tool

Launching the tool:

1. Download the files from the git repository here into the folder of your choice. 
2. Open the folder in any IDE (VS Code recommended)
3. Run the main.py file to interact with the menu in the terminal

Menu Functions:
	
1. Drop Tables:

This function will delete all existing tables in the database.

2. Create Tables:

This function will create all of the tables in the database. This can be used in conjunction with the first function to effectively delete all the rows in the database.

3. Populate Tables: 

This function will populate all of the tables in the database with pre-defined rows.




4. Query Tables:

This function reads the sql file containing a series of pre-defined queries, executes each of them and outputs the result to the terminal in an easy to read format.

5. Search Table:

When selected, this function shows a list of tables to choose from. When a table is selected, a list of the columns for that table is displayed. When one of the columns is selected, the user can enter a search term for that column and the value will be searched for using LIKE.

6. Update/Delete Row:

When selected, this function allows the user to select a table from a list. Then, the table is displayed and the user can select a row. The user can then decide to either update or delete the selected row. If the user chooses the delete option, the row will be deleted from the table. If the user chooses the update option, a list of columns will be displayed for the user to select from. Once the column is selected, the user may enter the new value for that column and the changes will be reflected in the database.
