package com.softwareag.wx.schemaimporter.impl.util.server;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import com.wm.lang.ns.NSRecord;
import com.softwareag.util.IDataMap;
// --- <<IS-END-IMPORTS>> ---

public final class service

{
	// ---( internal utility methods )---

	final static service _instance = new service();

	static service _newInstance() { return new service(); }

	static service _cast(Object o) { return (service)o; }

	// ---( server methods )---




	public static final void getPackageNameFromNode (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(getPackageNameFromNode)>> ---
		// @sigtype java 3.5
		// [i] record:0:required node
		// [o] field:0:required packageName
		IDataMap plMap = new IDataMap(pipeline);
		NSRecord node = (NSRecord) plMap.get("node");
		plMap.put("packageName", node.getPackage().getName());
			
		// --- <<IS-END>> ---

                
	}



	public static final void getSchemaDomainFromNode (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(getSchemaDomainFromNode)>> ---
		// @sigtype java 3.5
		// [i] record:0:required node
		// [o] field:0:required schemaDomain
		IDataMap plMap = new IDataMap(pipeline);
		NSRecord node = (NSRecord) plMap.get("node");
		plMap.put("schemaDomain", node.getSchemaDomain());
			
		// --- <<IS-END>> ---

                
	}
}

