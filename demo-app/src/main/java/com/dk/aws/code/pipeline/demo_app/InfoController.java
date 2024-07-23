package com.dk.aws.code.pipeline.demo_app;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class InfoController {
    @Value("${app.name}")
    private String appName;
    @Value("${app.version}")
    private String appVersion; 

       
    @GetMapping({"/", "info"})
    public String info(){
        return appName + "-" + appVersion;
    } 
}
