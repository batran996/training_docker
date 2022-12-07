package trainingDocker.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
    @RequestMapping("/api")
    public ResponseEntity<?>home(){
        return ResponseEntity.ok("Hello_Home");
    }

}
