package com.nextgen.webservices;

public class Greeting {
    private final long count;
    private final String msg;

    public Greeting(long count, String msg) {
        this.count = count;
        this.msg = msg;
    }

    public long getCount() {
        return count;
    }

    public String getMsg() {
        return msg;
    }
}
