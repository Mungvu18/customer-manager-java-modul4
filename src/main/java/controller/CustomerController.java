package controller;

import model.Customer;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import service.CustomerService;

import java.util.List;

@Controller
@RequestMapping("/customers")
public class CustomerController {
    CustomerService customerService = new CustomerService();
    @GetMapping("/list")
public ModelAndView list(){
        ModelAndView modelAndView = new ModelAndView("list");
        List<Customer> list = customerService.findAll();
        modelAndView.addObject("list",list);
        return modelAndView;
    }
    @GetMapping("/info/{id}")
    public ModelAndView info(@PathVariable Integer id){
        ModelAndView modelAndView = new ModelAndView("info");
        Customer customer = customerService.findById(id);
        modelAndView.addObject("c",customer);
        return modelAndView;
    }
    @GetMapping("create")
    public ModelAndView showFormCreat( ){
        ModelAndView modelAndView = new ModelAndView("create");
        return modelAndView;
    }
    @PostMapping("/create")
    public ModelAndView create(@RequestParam Integer id, String name, String email, String address){
        Customer customer = new Customer(id,name,email,address);
        customerService.save(customer);
        return list();
    }
}
