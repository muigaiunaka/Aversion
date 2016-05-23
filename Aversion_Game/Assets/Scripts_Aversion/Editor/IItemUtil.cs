using UnityEngine;
using UnityEditor;
using System.Collections;

static class IItemUtil {

	[MenuItem("Assets/Create/IItem")]
	public static void CreateItem() {
		ScriptableObjectUtility.CreateAsset<IItem>();
	}

}