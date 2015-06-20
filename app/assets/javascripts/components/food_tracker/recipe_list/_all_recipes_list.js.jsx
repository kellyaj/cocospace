var AllRecipesList = React.createClass({

  render: function() {
    var recipeNodes = this.props.recipes.map(function(recipe) {
      // maybe try key?
      return <Recipe name={recipe.name} ingredients={recipe.ingredients} />
    });
    return (
      <div className="all-recipes-list-container">
        {recipeNodes}
      </div>
    )
  }
});
