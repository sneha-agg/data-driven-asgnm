Files included:
- Create.cshtml, Edit.cshtml, Index.cshtml, Details.cshtml : Views implementing required features.
- AddTheme.cshtml : AJAX endpoint to add a new Theme and returns JSON { success, themeId, themeName }.
- site.css : Custom CSS for HD polish.
- alter_fks.sql : ALTER TABLE statements you can run to add foreign key constraints (run on test DB).
- update_db_for_submission.sql : Minimal SQL to recreate a sample game and theme if you remove full DB before zipping.

Instructions:
1. Place these files into your Views/Home/ (or appropriate folder) in your Visual Studio project.
2. Ensure Web.config has a connection string named "BoardGame" pointing to your DB.
3. Run alter_fks.sql in SQL Server Management Studio (or equivalent) to add constraints (backup first).
4. If you removed the large DB, run update_db_for_submission.sql to create sample entries.
5. Open Create.cshtml to add new games. The "Add" button beside Themes uses AddTheme.cshtml to insert a theme and returns its ThemeID.

Notes:
- The code uses WebMatrix.Data.Database.Open and assumes your environment supports it.
- Adjust column names and identity retrieval (SELECT @@IDENTITY) depending on your DB engine.
