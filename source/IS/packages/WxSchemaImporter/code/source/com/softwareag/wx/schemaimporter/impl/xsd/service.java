package com.softwareag.wx.schemaimporter.impl.xsd;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import com.softwareag.util.IDataMap;
// --- <<IS-END-IMPORTS>> ---

public final class service

{
	// ---( internal utility methods )---

	final static service _instance = new service();

	static service _newInstance() { return new service(); }

	static service _cast(Object o) { return (service)o; }

	// ---( server methods )---




	public static final void getPrefixForNamespaceFromPipeline (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(getPrefixForNamespaceFromPipeline)>> ---
		// @sigtype java 3.5
		// [i] field:0:required namespace
		// [i] record:0:required namespaceToPrefixMapping
		// [o] field:0:required prefix
	GetPrefixForNamespaceFromPipelineInput input = new GetPrefixForNamespaceFromPipelineInput(pipeline);
	GetPrefixForNamespaceFromPipelineOutput output = new GetPrefixForNamespaceFromPipelineOutput(pipeline);
	
	output.setPrefix(input.getNamespaceToPrefixMapping().getAsString(input.getNamespace(), ""));
	
		// --- <<IS-END>> ---

                
	}

	// --- <<IS-START-SHARED>> ---
	private static class GetPrefixForNamespaceFromPipelineInput{
		
		private IDataMap plMap;
		
		public GetPrefixForNamespaceFromPipelineInput(IData pipeline){
			plMap = new IDataMap(pipeline);
		}
		
		public IDataMap getNamespaceToPrefixMapping(){
			return plMap.getAsIDataMap("namespaceToPrefixMapping", new IDataMap());
		}
		
		public String getNamespace(){
			return plMap.getAsString("namespace", "");
		}
	};
	
	private static class GetPrefixForNamespaceFromPipelineOutput{
		
		private IDataMap plMap;
		
		public GetPrefixForNamespaceFromPipelineOutput(IData pipeline){
			plMap = new IDataMap(pipeline);
		}
		
		public void setPrefix(String prefix){
			plMap.put("prefix", prefix);
		}
		
		public String getPrefix(){
			return plMap.getAsString("prefix");
		}
	};	
	// --- <<IS-END-SHARED>> ---
}

