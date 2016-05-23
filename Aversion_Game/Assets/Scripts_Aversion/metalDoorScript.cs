using UnityEngine;
using System.Collections;

public class metalDoorScript : MonoBehaviour {
	public bool open;
	public float doorOpenAngle = 0;
	public float doorCloseAngle = 270f;
	public AudioSource doorOpen;
	public AudioSource doorClose;

	// Use this for initialization
	void Start () {
		open = false;
	}

	public void ChangeDoorState() {
		open = !open;
	}

	// Update is called once per frame
	void Update () {
		if (open) {
			doorClose.PlayDelayed (0.25f);
			Quaternion targetRotation = Quaternion.Euler (0, doorCloseAngle, 0);
			transform.localRotation = Quaternion.Slerp (transform.localRotation, targetRotation, 
				doorClose.clip.length * Time.deltaTime);
		} else {
			doorOpen.Play ();
			Quaternion targetRotation2 = Quaternion.Euler (0, doorOpenAngle, 0);
			transform.localRotation = Quaternion.Slerp (transform.localRotation, targetRotation2, doorOpen.clip.length * Time.deltaTime);

		}

	}
}
