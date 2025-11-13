-- ALTER TABLE statements to add foreign keys to junction tables
ALTER TABLE dbo.GameInThemes
ADD CONSTRAINT FK_GameInThemes_BoardGame FOREIGN KEY (BGGId) REFERENCES dbo.BoardGame(BGGId);

ALTER TABLE dbo.GameInThemes
ADD CONSTRAINT FK_GameInThemes_Theme FOREIGN KEY (ThemeID) REFERENCES dbo.Theme(ThemeID);

ALTER TABLE dbo.GameInMechanics
ADD CONSTRAINT FK_GameInMechanics_BoardGame FOREIGN KEY (BGGId) REFERENCES dbo.BoardGame(BGGId);

ALTER TABLE dbo.GameInMechanics
ADD CONSTRAINT FK_GameInMechanics_Mechanics FOREIGN KEY (MechanicID) REFERENCES dbo.Mechanics(MechanicID);

ALTER TABLE dbo.GameCategory
ADD CONSTRAINT FK_GameCategory_BoardGame FOREIGN KEY (BGGId) REFERENCES dbo.BoardGame(BGGId);

ALTER TABLE dbo.GameCategory
ADD CONSTRAINT FK_GameCategory_Category FOREIGN KEY (CategoryID) REFERENCES dbo.Category(CategoryID);

ALTER TABLE dbo.GameDesigner
ADD CONSTRAINT FK_GameDesigner_BoardGame FOREIGN KEY (BGGId) REFERENCES dbo.BoardGame(BGGId);

ALTER TABLE dbo.GameDesigner
ADD CONSTRAINT FK_GameDesigner_Designer FOREIGN KEY (DesignID) REFERENCES dbo.Designer(DesignID);

ALTER TABLE dbo.GameArtists
ADD CONSTRAINT FK_GameArtists_BoardGame FOREIGN KEY (BGGId) REFERENCES dbo.BoardGame(BGGId);

ALTER TABLE dbo.GameArtists
ADD CONSTRAINT FK_GameArtists_Artists FOREIGN KEY (ArtistID) REFERENCES dbo.Artists(ArtistID);
