package com.example.jive

import android.media.MediaPlayer
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {
    private val CHANNEL = "flutter.native/helper"

    @ExperimentalStdlibApi
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL)
            .setMethodCallHandler { call, _ ->
                if (call.method == "playExample") {
                    val mediaPlayer = MediaPlayer.create(this@MainActivity, R.raw.song)
                    mediaPlayer.start()
                }
            }
    }

    /*
        private lateinit var mediaPlayer: MediaPlayer

        override fun onDestroy() {
            super.onDestroy()
            if (::mediaPlayer.isInitialized) {
                mediaPlayer.release()
            }
        }
     */
}