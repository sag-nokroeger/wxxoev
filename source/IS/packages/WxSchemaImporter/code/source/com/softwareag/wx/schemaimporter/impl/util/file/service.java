package com.softwareag.wx.schemaimporter.impl.util.file;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.UUID;
import com.softwareag.util.IDataMap;
// --- <<IS-END-IMPORTS>> ---

public final class service

{
	// ---( internal utility methods )---

	final static service _instance = new service();

	static service _newInstance() { return new service(); }

	static service _cast(Object o) { return (service)o; }

	// ---( server methods )---




	public static final void getNsDeclaraionsFromResource (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(getNsDeclaraionsFromResource)>> ---
		// @sigtype java 3.5
		// [i] field:0:required packageName
		// [i] field:0:required folderName
		// [i] field:0:required doctypeName
		// [o] field:0:required nsDeclsAsXML
		GetNsDeclarationFromResourceInput input = new GetNsDeclarationFromResourceInput(pipeline);
		GetNsDeclarationsFromResourceOutput output = new GetNsDeclarationsFromResourceOutput(pipeline);
		
			File infile = new File ("packages/"+input.getPackageName()+"/resources/"+input.getFolderName()+"_"+input.getDoctypeName()+"_nsDecls.xml");
			FileInputStream fis = null;
			try {
				fis = new FileInputStream(infile);
				String nsDeclsAsXML = new String(fis.readAllBytes(), "UTF-8");
				output.setNsDeclsAsXML(nsDeclsAsXML);
			} catch (UnsupportedEncodingException e) {
				throw new ServiceException("Failed to read nsDecls from resource file because he system does not support encoding UTF-8.");
			} catch (IOException e) {
				throw new ServiceException("Failed to read nsDecls from resource file "+infile.getAbsolutePath()+": "+e.getMessage());
			}
			finally{
				if (fis != null){
					try {
						fis.close();
					} catch (IOException e) {
						throw new ServiceException("Failed to close input stream on file "+infile.getAbsolutePath()+": "+e.getMessage());
					}
				}
			}
			
		// --- <<IS-END>> ---

                
	}



	public static final void storeNsDeclarationsAsResource (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(storeNsDeclarationsAsResource)>> ---
		// @sigtype java 3.5
		// [i] field:0:required packageName
		// [i] field:0:required folderName
		// [i] field:0:required doctypeName
		// [i] field:0:required nsDeclsAsXML
		// [o] field:0:required outFilePath
	StoreNsDeclarationAsResourceInput input = new StoreNsDeclarationAsResourceInput(pipeline);
	StoreNsDeclarationsAsResourceOutput output = new StoreNsDeclarationsAsResourceOutput(pipeline);
	
	if (input.getNsDeclsAsXML() != null && !"".equals(input.getNsDeclsAsXML())){
		File outfile = new File ("packages/"+input.getPackageName()+"/resources/"+input.getFolderName()+"_"+input.getDoctypeName()+"_nsDecls.xml");
		output.setOutFilePath(outfile.getAbsolutePath());
		FileOutputStream fos = null;
		try {
			fos = new FileOutputStream(outfile);
			fos.write(input.getNsDeclsAsXML().getBytes("UTF-8"));
		} catch (UnsupportedEncodingException e) {
			throw new ServiceException("Failed to write nsDecls to resource file because he system does not support encoding UTF-8.");
		} catch (IOException e) {
			throw new ServiceException("Failed to write nsDecls to resource file "+outfile.getAbsolutePath()+": "+e.getMessage());
		}
		finally{
			if (fos != null){
				try {
					fos.close();
				} catch (IOException e) {
					throw new ServiceException("Failed to close output stream on file "+outfile.getAbsolutePath()+": "+e.getMessage());
				}
			}
		}
	}
		// --- <<IS-END>> ---

                
	}



	public static final void storeSchemaAsTemporaryFile (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(storeSchemaAsTemporaryFile)>> ---
		// @sigtype java 3.5
		// [i] field:0:optional schemaTmpDir
		// [i] object:0:required schemaContent
		// [i] field:0:required schemaFileName
		// [o] field:0:required outFilePath
		// [o] field:0:required schemaTmpDir
	StoreSchemaAsTemporaryFileInput input = new StoreSchemaAsTemporaryFileInput(pipeline);
	StoreSchemaAsTemporaryFileOutput output = new StoreSchemaAsTemporaryFileOutput(pipeline);
	
	String schemaTmpDir = input.getSchemaTempDirOrDefault();
	File schemaTmpDirFile = new File(schemaTmpDir);
	if (!schemaTmpDirFile.exists() && !schemaTmpDirFile.mkdirs()){
		throw new ServiceException("Failed to create temporary directory "+schemaTmpDirFile.getAbsolutePath()+" for schema upload.");
	}
	File outfile = new File(schemaTmpDir+File.separator+input.getSchemaFileName());
	FileOutputStream fos = null;
	byte[] buffer = new byte[1024];
	
	try {
		fos = new FileOutputStream(outfile);
		InputStream fis = input.getSchemaContent();
		int bufferLength;
		while ((bufferLength = fis.read(buffer)) > 0){
			fos.write(buffer, 0, bufferLength);
			fos.flush();
		}
		output.setOutFilePath(outfile.getAbsolutePath());
		output.setSchemaTmpDir(schemaTmpDir);
	} catch (FileNotFoundException e) {
		throw new ServiceException("Failed to write to output stream "+outfile.getAbsolutePath()+": "+e.getMessage());
	} catch (IOException e) {
		throw new ServiceException("Failed to write schema to output stream "+outfile.getAbsolutePath()+": "+e.getMessage());
	}
	finally{
		if (fos != null){
			try {
				fos.close();
			} catch (IOException e) {
				throw new ServiceException("Failed to close output stream on "+outfile.getAbsolutePath()+": "+e.getMessage());
			}	
		}
		
	}
		// --- <<IS-END>> ---

                
	}

	// --- <<IS-START-SHARED>> ---
	private static class GetNsDeclarationsFromResourceOutput{
		private IDataMap plMap;
		
		public GetNsDeclarationsFromResourceOutput(IData pipeline){
			plMap = new IDataMap(pipeline);
		}
		
		public void setNsDeclsAsXML(String nsDeclAsXML){
			plMap.put("nsDeclsAsXML", nsDeclAsXML);
		}
		
		public String getNsDeclsAsXML(){
			return plMap.getAsString("nsDeclsAsXML");
		}
	
	};
	
	private static class StoreNsDeclarationsAsResourceOutput{
		private IDataMap plMap;
		
		public StoreNsDeclarationsAsResourceOutput(IData pipeline){
			plMap = new IDataMap(pipeline);
		}
		
		public void setOutFilePath(String outFilePath){
			plMap.put("outFilePath", outFilePath);
		}
		
		public String getOutFilePath(){
			return plMap.getAsString("outFilePath");
		}
	}
	
	private static class StoreNsDeclarationAsResourceInput{
		
		private IDataMap plMap;
		
		public StoreNsDeclarationAsResourceInput(IData pipeline) throws ServiceException{
			plMap = new IDataMap(pipeline);
			validate();
		}
		
		private void validate() throws ServiceException{
			//packageName, folderName and rootElementName are mandatory (not null and not empty)
			if (getPackageName() == null || "".equals(getPackageName())){
				throw new ServiceException("The parameter packageName is mandatory");
			}
			if (getFolderName() == null || "".equals(getFolderName())){
				throw new ServiceException("The parameter folderName is mandatory");
			}
			if (getDoctypeName() == null || "".equals(getDoctypeName())){
				throw new ServiceException("The parameter doctypeName is mandatory");
			}
		}
		
		public String getPackageName(){
			return plMap.getAsString("packageName");
		}
		
		public String getFolderName(){
			return plMap.getAsString("folderName");
		}
		
		public String getDoctypeName(){
			return plMap.getAsString("doctypeName");
		}
		
		public String getNsDeclsAsXML(){
			return plMap.getAsString("nsDeclsAsXML");
		}
	};
	
	private static class GetNsDeclarationFromResourceInput{
		
		private IDataMap plMap;
		
		public GetNsDeclarationFromResourceInput(IData pipeline) throws ServiceException{
			plMap = new IDataMap(pipeline);
			validate();
		}
		
		private void validate() throws ServiceException{
			//packageName, folderName and rootElementName are mandatory (not null and not empty)
			if (getPackageName() == null || "".equals(getPackageName())){
				throw new ServiceException("The parameter packageName is mandatory");
			}
			if (getFolderName() == null || "".equals(getFolderName())){
				throw new ServiceException("The parameter folderName is mandatory");
			}
			if (getDoctypeName() == null || "".equals(getDoctypeName())){
				throw new ServiceException("The parameter doctypeName is mandatory");
			}
		}
		
		public String getPackageName(){
			return plMap.getAsString("packageName");
		}
		
		public String getFolderName(){
			return plMap.getAsString("folderName");
		}
		
		public String getDoctypeName(){
			return plMap.getAsString("doctypeName");
		}
	};
	
	private static class StoreSchemaAsTemporaryFileInput{
		private IDataMap plMap;
		
		public StoreSchemaAsTemporaryFileInput(IData pipeline){
			plMap = new IDataMap(pipeline);
		}
		
		public String getSchemaTempDirOrDefault(){
			return plMap.getAsString("schemaTmpDir", System.getProperty("java.io.tmpdir")+File.separator+UUID.randomUUID().toString());
		}
		
		public InputStream getSchemaContent(){
			return (InputStream) plMap.get("schemaContent");
		}
		
		public String getSchemaFileName(){
			return plMap.getAsString("schemaFileName");
		}
	}
	
	private static class StoreSchemaAsTemporaryFileOutput{
		private IDataMap plMap;
		
		public StoreSchemaAsTemporaryFileOutput(IData pipeline){
			plMap = new IDataMap(pipeline);
		}
		
		public void setSchemaTmpDir(String schemaTmpDir){
			plMap.put("schemaTmpDir", schemaTmpDir);
		}
		
		public void setOutFilePath(String outFilePath){
			plMap.put("outFilePath", outFilePath);
		}
	}
		
	// --- <<IS-END-SHARED>> ---
}

