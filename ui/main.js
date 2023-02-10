window.addEventListener("message", function(event) { 
  const item = event.data;
  if(item.type === 'show') {
    const All = document.querySelector("body");
    All.style.display = 'block'
  } else if(item.type === 'hide') {
const All = document.querySelector("body");
All.style.display = 'none'
  } else if(item.type === 'update') {

    $('.Texts').empty();

     newRow = `
    <div class='Id'><u>ID</u></div>
    <div class='Name'><u>STEAM</u></div>
    <div class='Ping'><u>PING</u></div>`;

    for (var i = 0; i < item.Players.length; i++) {
      var player = item.Players[i];
      

       newRow += 
      "<div class='Id'>" + player.id + "</div>" +
      "<div class='Name'>" + player.name + "</div>" +
      "<div class='Ping'>" + player.ping + "</div>"; 
      


      const barp = document.querySelector(".barp");
      const PlayerAmountP = item.Players.length / 32 * 100;
      barp.style.width = `${PlayerAmountP}%`;
      document.querySelector('.bart').textContent = `${item.Players.length}/32`;
    }
    $('.Texts').append(newRow);
  }
})