using UnityEngine;
using System.Collections;

public class ElevatorScript : MonoBehaviour {
	public bool isOnLevel;
	public bool doorIsOpen;
	public GameObject leftDoor;
	public GameObject rightDoor;
	Vector3 closedDoorPosL;
	Vector3 closedDoorPosR;
	Vector3 openLeftDoor;

	// Use this for initialization
	void Start () {
		isOnLevel = false;
		closedDoorPosL = new Vector3 (leftDoor.transform.localPosition.x,
			                        leftDoor.transform.localPosition.y,
			                        leftDoor.transform.localPosition.z);
		closedDoorPosR = new Vector3 (rightDoor.transform.localPosition.x,
			rightDoor.transform.localPosition.y,
			rightDoor.transform.localPosition.z);
	}

	// Update is called once per frame
	void Update () {
		if (doorIsOpen) {
//			float leftZPos = closedDoorPosL.z;
//			if (leftZPos > 11.38f) {
//				leftZPos = closedDoorPosL.z - Time.deltaTime;
//			} else {
//				leftZPos = leftZPos;
//			}

			openLeftDoor = new Vector3 (leftDoor.transform.position.x, leftDoor.transform.position.y,
				11.38f); 
			leftDoor.transform.localPosition = openLeftDoor;

			Vector3 openRightDoor = new Vector3 (rightDoor.transform.position.x, rightDoor.transform.position.y,
				                        17.38f);
			rightDoor.transform.localPosition = openRightDoor;
		} else {
			leftDoor.transform.localPosition = closedDoorPosL;
			rightDoor.transform.localPosition = closedDoorPosR;
		}
	}

	void callElevator() {
		
	}

	public void elevatorDoorOpen() {
		doorIsOpen = !doorIsOpen;
	}

	public void elevatorDoorClose() {
		
	}
}
