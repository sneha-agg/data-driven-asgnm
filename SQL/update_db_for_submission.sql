-- Minimal SQL to recreate a sample game and theme if you remove the full DB for submission.
BEGIN TRANSACTION;

INSERT INTO Theme (ThemeID, ThemeName) VALUES ('T999', 'Student Theme Example');
INSERT INTO GameFamily (FamilyCode, Family) VALUES ('F99', 'Student Family Example');

INSERT INTO BoardGame (BGGId, Name, Description, YearPublished, FamilyCode, imagePath)
VALUES (9999, 'Assignment Example Game', 'Created for assignment submission', 2025, 'F99', '/images/example.jpg');

INSERT INTO GameInThemes (BGGId, ThemeID) VALUES (9999, 'T999');

COMMIT;
