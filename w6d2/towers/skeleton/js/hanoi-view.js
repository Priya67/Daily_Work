class View {
  constructor(game, $el) {
    this.game = game;
    this.$el = $el;

    this.$el.append(this.setupTowers());
  }

  setupTowers() {
    const $tower1 = $("<ul></ul>");
    $tower1.css("width","200px");


    const $plateOne = $("<li></li>");
    const $plateTwo = $("<li></li>");
    const $plateThree = $("<li></li>");
    const $plateFour = $("<li></li>");

    $plateFour.css("width", "200px");
    $plateThree.css("width", "200px");
    $plateTwo.css("width", "100px");
    $plateOne.css("width", "50px");

    $tower1.prepend($plateFour);
    $plateFour.addClass("base");


    [$plateThree, $plateTwo, $plateOne].forEach((el) => {
      el.addClass("gray");
      // el.css("list-style-type", "none");
      $tower1.prepend(el);
    });

    return $tower1;
  }

}

 module.exports = View;
