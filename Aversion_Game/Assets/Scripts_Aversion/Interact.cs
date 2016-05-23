using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class Interact : MonoBehaviour {

	public int distanceToItem;
	public GameObject item;
	public int batteries;
	public int tapes;
	public int keys;
	public List<GameObject> itemInventory;
	public Text displayItemText;
	public int distanceToDoor;

	// Use this for initialization
	void Start () {
		itemInventory = new List<GameObject> ();
		distanceToItem = 7;
		distanceToDoor = 3;
		//displayItemText = "";
	}

	// Update is called once per frame
	void Update () {
		Collect ();
		useBattery();
		DoorInteraction ();
	}

	void Collect () {
		// when user left clicks (0), right click is (1),
		if (Input.GetMouseButtonUp(0)) {
			RaycastHit hit;
			Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
			if (Physics.Raycast(ray, out hit, distanceToItem)) {
				if (hit.collider.gameObject.tag == "battery") { 
					batteries++;
					Destroy(hit.collider.gameObject);
					itemInventory.Add (item);
					displayItemText.text = displayItemType ("battery");
					Invoke ("hideItemText", 4);

				} else if (hit.collider.gameObject.tag == "document") {
					tapes++;
					Destroy(hit.collider.gameObject);
					itemInventory.Add (item);
					displayItemText.text = displayItemType ("document");
					Invoke ("hideItemText", 4);
				} else if (hit.collider.gameObject.tag == "key") {
					keys++;
					Destroy(hit.collider.gameObject);
					itemInventory.Add (item);
					displayItemText.text = displayItemType ("key");
					Invoke ("hideItemText", 4);
				}
					
				Debug.Log(itemInventory.Count);
					
			}
		}
	}

	// Allows player to use a battery by pressing the 'B' key
	void useBattery() {
		if (Input.GetKeyDown(KeyCode.B)) {
			if (batteries > 0 ) {
				batteries--;
			} else {
				Debug.Log("There are no batteries to use");
			}
		}
	}

	// Interacts with (opens or closes) a door
	void DoorInteraction() {
		if (Input.GetMouseButtonDown(0)) {
			RaycastHit hit;
			Ray ray = Camera.main.ScreenPointToRay(Input.mousePosition);
			if (Physics.Raycast(ray, out hit, distanceToDoor)) {
				if (hit.collider.gameObject.tag == "door") { 
					hit.collider.gameObject.GetComponent<OpenDoor> ().ChangeDoorState ();
				} else if (hit.collider.gameObject.tag == "metaldoor") { 
					hit.collider.gameObject.GetComponent<metalDoorScript> ().ChangeDoorState ();
				} else if (hit.collider.gameObject.tag == "elevatorDoor") {
					hit.collider.gameObject.GetComponent<ElevatorScript> ().elevatorDoorOpen ();
				}

			} 
		}

	}
	// 
	string displayItemType(string item) {
		return "You found a " + item;
	}
	// Hides the found item display text
	void hideItemText() {
		displayItemText.text = "";
	}

}
