var IngredientsList = React.createClass({
  render: function() {
    return (
      <div className="ingredients-list-container">
        <h3>{{this.props.name}}</h3>
        <IngredientList ingredients={this.props.ingredients} />
      </div>
    )
  }
});
