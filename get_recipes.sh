#! /bin/sh
set -e 

COOKBOOK_CLONE_URL="https://github.com/leopardslab/dunner-cookbook.git"
CLONE_TEMP_DIR=`mktemp -d`
DEST_DIR="./content/cookbook-recipes"

git clone --depth 1 https://github.com/leopardslab/dunner-cookbook.git $CLONE_TEMP_DIR

for d in "$CLONE_TEMP_DIR/recipes/*/"; do
	recipe_name="$(echo $(basename $d))"
	echo "Copying recipe: $recipe_name"
	echo "Dunner task file:"
	cat "$CLONE_TEMP_DIR/recipes/$recipe_name/.dunner.yaml"
	recipe_content="$(echo "$(cat $CLONE_TEMP_DIR/recipes/$recipe_name/.dunner.yaml)")"
	echo "Recipe content: $recipe_content"
	recipe_readme="$CLONE_TEMP_DIR/recipes/$recipe_name/README.md"
	echo "\n# Recipe\n\n\`\`\`\n$(echo "$recipe_content")\n\`\`\`\n" >> "$recipe_readme"
	cp "$recipe_readme" "$DEST_DIR/$recipe_name.md"
done

rm -rf $CLONE_TEMP_DIR

echo "Done"


