package com.api.automation;

import com.intuit.karate.junit5.Karate;

public class TestRunner {

    @Karate.Test
    Karate testUsers() {
        return Karate.run("classpath:com/api/automation");
    }

}
