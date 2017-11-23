const View = require("./ttt-view.js");// require appropriate file
const Game = require("../../solution/game.js"); // require appropriate file

$( () => {
  const game = new Game();
  const tttFigure = $(".ttt");

  const view = new View(game, tttFigure);

        // $("li").on("hover", (e) => {
        //   const ct = e.currentTarget;
        //   $(ct).css("background-color", "yellow");
        // });

});
