package com.example.efia.cafeteria_client;

/**
 * Created by Efia on 2016/4/19.
 */

import android.app.Activity;
import android.os.Bundle;
import android.webkit.WebSettings;
import android.webkit.WebView;



public class Cafeteria_Client extends Activity {

    private WebView myWebView;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        myWebView = (WebView) findViewById(R.id.webView);
        WebSettings wSet = myWebView.getSettings();
        wSet.setJavaScriptEnabled(true);//设置在web中调用js

        myWebView.loadUrl("file:///android_asset/daijieshou.html");

    }


}
