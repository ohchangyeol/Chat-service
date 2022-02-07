$(document).ready(function(){

    $("#close-btn").on("click", ()=>{
        $(".ch-desk-messenger",parent.document).attr("class", "ch-messenger-hidden");
    })

    $("#back-btn").on("click" , ()=>{
        self.location = "/chat/chatlist";
    })
    $(".list-box").on("click" , (e)=>{
        const room = $(e.currentTarget).data('chatroom');
        console.log($(e.currentTarget).data('chatroom'));
        
        self.location = "/chat/chatroom?room="+room;
        
    })
});