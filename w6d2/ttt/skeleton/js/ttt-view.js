class View {
  constructor(game, $el) {
    this.game = game;
    this.$el = $el;
    this.$el.append(this.setupBoard());
    this.bindEvents();
  }

  bindEvents() {
    $("li").eq(0).data("pos",[0,0]);
    $("li").eq(1).data("pos",[0,1]);
    $("li").eq(2).data("pos",[0,2]);
    $("li").eq(3).data("pos",[1,0]);
    $("li").eq(4).data("pos",[1,1]);
    $("li").eq(5).data("pos",[1,2]);
    $("li").eq(6).data("pos",[2,0]);
    $("li").eq(7).data("pos",[2,1]);
    $("li").eq(8).data("pos",[2,2]);

    $("li").on("click", (e) => {
      const ct = e.currentTarget;
      const pos = $(ct).data("pos");
      $(ct).text(`${this.game.currentPlayer}`);
      try {
        this.game.playMove(pos);
        this.makeMove($(ct));
      }
      catch (exception) {
        alert('Invalid Move!');
      }

    });
  }

  makeMove($square) {
    console.log("it ran.");
    $square.css("background-color", "white").bind(this);
    $square.css("font-size", "60px");
    $square.css("text-align", "center");
    if (this.game.currentPlayer === 'x') {
      $square.css("font-color", "blue");
    } else {
      $square.css("font-color", "green");
    }
    if(this.game.board.winner()) {
      const $winner = $("<p></p>");
      $winner.text(`Congratulations!!!!`);
      $("body").prepend($winner);
      $winner.css("text-align", "center");
    }
  }

  setupBoard() {
    const $grid = $("<ul></ul>");
    $grid.css("width", "300px");
    $grid.css("margin", "auto");
    // $grid.css("justify-content", "center");
    // $grid.css("display", "flex");
    for (let i = 0; i<9; i++) {
      const $cell = $("<li></li>");
      $cell.css("float","left");
      $cell.css("border","3px");
      $cell.css("border-color", "black");
      $cell.css("border-style", "solid");
      $cell.css("box-sizing", "border-box");
      $cell.css("background-color", "gray");
      $cell.css("height", "100px");
      $cell.css("width", "100px");
      $cell.css("list-style", "none");
      // $("li").on("mouseenter", ()=>{});

      $cell.hover(
        function(e) {
          const ct = e.currentTarget;
          $(ct).css("background-color", "yellow");
          // console.log(e);
        },
        function(e) {
          const ct = e.currentTarget;
          if($(ct).text()==="") {
            $(ct).css("background-color", "gray");
          }
          else {

            $(ct).css("background-color", "white");
          }
        }

      );
      $grid.prepend($cell);

      }

      // $("li").eq(0).data("pos",[0,0]);
      // // $grid.children()[0].data("pos",[0,0]);
      // console.log($("li").eq(0).data("pos"));
      // $("li").eq(1).data("pos",[0,1]);
      // $("li").eq(2).data("pos",[0,2]);
      // $("li").eq(3).data("pos",[1,0]);
      // $("li").eq(4).data("pos",[1,1]);
      // $("li").eq(5).data("pos",[1,2]);
      // $("li").eq(6).data("pos",[2,0]);
      // $("li").eq(7).data("pos",[2,1]);
      // $("li").eq(8).data("pos",[2,2]);

    return $grid;
  }
}

module.exports = View;
