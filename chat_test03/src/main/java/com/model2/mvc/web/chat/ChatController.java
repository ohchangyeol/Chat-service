package com.model2.mvc.web.chat;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/chat/*")

public class ChatController {
	
//	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	// Constructor
	public ChatController() {
		System.out.println("\n\n\n\n#################\n"+this.getClass());
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "chatroom", method = RequestMethod.GET)
//	public String chatRoom(Locale locale, Model model) {
	public String chatRoom(@RequestParam("room") String room) {
		
		System.out.println("Chat Room GET :: "+room);
		
		return "/view/chat/chattingRoom.jsp";
	}
	
	@RequestMapping(value = "chatlist", method = RequestMethod.GET)
//	public String chatRoom(Locale locale, Model model) {
	public String chatlist() {
		
		System.out.println("chat list GET");
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		model.addAttribute("serverTime", formattedDate );
		//String room = room;
		return "/view/chat/chattingList.jsp";
	}
	
}
