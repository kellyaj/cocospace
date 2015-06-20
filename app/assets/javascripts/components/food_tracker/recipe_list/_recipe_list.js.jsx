var RecipeList = React.createClass({

  render: function() {
    return (
      <div className="recipe-list-container">
        <RecipeListHeader />
        <AllRecipesList recipes={this.state.recipes} />
        <RecipeForm form={this.state.form} />
      </div>
    )
  }
});
