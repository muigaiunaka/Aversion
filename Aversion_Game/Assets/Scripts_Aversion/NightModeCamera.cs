using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class NightModeCamera : MonoBehaviour {
	public bool use = false;
	public Camera nightVision;
	public Camera mainCam;
	public Light nightModeLight;
	public Canvas camScreen;
	public Text recordingTime;
	private float recSecs;
	public AudioSource camBeep;

	// Use this for initialization
	void Start () {
	}
	
	// Update is called once per frame
	void Update () {
		// press N key to turn on Nightmode
		if (Input.GetKeyDown(KeyCode.N)) {
			use = !use;
		} 
		if (use == true) {
			use = true;
			camBeep.mute = false;
			mainCam.enabled = false;
			nightVision.enabled = true;
			nightModeLight.enabled = true;
			camScreen.enabled = true;
			recSecs += Time.deltaTime;
			recordingTime.text = FormatRecordingTime(recSecs);
			zoomIn ();
			zoomOut ();


		} else if (use == false) {
			use = false;
			camBeep.mute = true;
			camBeep.Play ();
			mainCam.enabled = true;
			nightVision.enabled = false;
			nightModeLight.enabled = false;
			camScreen.enabled = false;
		}
	}

	// Zooms the night mode camera out when 'P' key is pressed
	void zoomOut() {
		if (nightVision.fieldOfView < 60) {
			if (Input.GetKey (KeyCode.P)) {
				nightVision.fieldOfView++;
			}
		}
	}
	// Zooms the night mode camera in when 'O' key is pressed
	void zoomIn() {
		if (nightVision.fieldOfView > 10) {
			if (Input.GetKey (KeyCode.O)) {
				nightVision.fieldOfView--;
			}  
		}
	}

	// Returns the time spent recording as a string to set to the Text UI
	string FormatRecordingTime(float time) {
		int d = (int)(time * 100.0f);
		int hours = d / (60 * 60 * 100);
		int minutes = d / (60 * 100);
		int seconds = (d % (60 * 100)) / 100;
		int hundredths = d % 100;
		return string.Format("{0:00}:{1:00}:{2:00}.{3:00}", hours, minutes, seconds, hundredths);
	}

}
