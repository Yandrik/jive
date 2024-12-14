package com.example.jive

import android.media.MediaPlayer
import androidx.appcompat.app.AppCompatActivity


class MainActivity : AppCompatActivity() {
    private lateinit var mediaPlayer: MediaPlayer

    override fun onStart() {
        super.onStart()

        mediaPlayer = MediaPlayer.create(this@MainActivity, R.raw.song)
        mediaPlayer.start()
    }

    override fun onDestroy() {
        super.onDestroy()
        if (::mediaPlayer.isInitialized) {
            mediaPlayer.release()
        }
    }
}