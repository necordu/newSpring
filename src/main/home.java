package main;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.portlet.ModelAndView;

@Controller
public class home {

    public void printMessage(){
        System.out.println("Hello");
    }

    @RequestMapping(value="/message", method=RequestMethod.GET)
    public String message() {
        return "showMessage";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST, params = {"first","second","action"})
    public String calculate(@RequestParam String first, @RequestParam String second, @RequestParam String action){
        switch (action){
            case "-":
                return String.valueOf(Float.parseFloat(first) - Float.parseFloat(second));
            case ":":
            case "/":
                return String.valueOf(Float.parseFloat(first) / Float.parseFloat(second));
            case "*":
                return String.valueOf(Float.parseFloat(first) * Float.parseFloat(second));
            case "+":
                return String.valueOf(Float.parseFloat(first) + Float.parseFloat(second));
            default:
                return "Действие не подходит";
        }
    }

}
