-- Index sur le nom des recettes
CREATE INDEX "IX_nom_recette" ON RECEIPT(NAME)

-- Index sur la description des recettes
CREATE INDEX "IX_desc_recette" ON RECEIPT(DESCRIPTION)

-- Index sur le nom des ingrédients
CREATE INDEX "IX_nom_ingredients" ON INGREDIENT(NAME)