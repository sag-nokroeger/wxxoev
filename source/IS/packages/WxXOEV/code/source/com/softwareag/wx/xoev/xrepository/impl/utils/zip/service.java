package com.softwareag.wx.xoev.xrepository.impl.utils.zip;

// -----( IS Java Code Template v1.2

import com.wm.data.*;
import com.wm.util.Values;
import com.wm.app.b2b.server.Service;
import com.wm.app.b2b.server.ServiceException;
// --- <<IS-START-IMPORTS>> ---
import java.util.LinkedList;
import java.util.List;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import com.softwareag.util.IDataMap;
import java.util.UUID;
// --- <<IS-END-IMPORTS>> ---

public final class service

{
	// ---( internal utility methods )---

	final static service _instance = new service();

	static service _newInstance() { return new service(); }

	static service _cast(Object o) { return (service)o; }

	// ---( server methods )---




	public static final void unzipSchemaPackageToLocalFS (IData pipeline)
        throws ServiceException
	{
		// --- <<IS-START(unzipSchemaPackageToLocalFS)>> ---
		// @sigtype java 3.5
		// [i] object:0:required schemaPackageZippedStream
		// [o] field:1:required schemaFiles
		// [o] field:1:required schemaPaths
		// [o] field:0:required schemaTmpDir
		UnzipSchemaPackageToLocalFSInput input = new UnzipSchemaPackageToLocalFSInput(pipeline);
		UnzipSchemaPackageToLocalFSOutput output = new UnzipSchemaPackageToLocalFSOutput(pipeline);
		ZipInputStream zis = input.getSchemaPackageZippedStream();
		ZipEntry entry;
		byte[] buffer = new byte[1024];
		List<String> schemaPaths = new LinkedList<String>();
		List<String> schemaFiles = new LinkedList<String>();
		FileWriter logWriter = null;
		try {
			logWriter = new FileWriter("/tmp/unzip.log");
			entry = zis.getNextEntry();
			logWriter.write("Start unzipping.");
			logWriter.flush();
			File destDir = new File(System.getProperty("java.io.tmpdir")+File.separator+UUID.randomUUID());
			destDir.mkdirs();
			output.setSchemaTmpDir(destDir.getAbsolutePath());
			while (entry != null){
				logWriter.write("Unzipping entry: "+entry.getName());
				logWriter.flush();				
				File destFile = new File(destDir, entry.getName());
				if (!destFile.getCanonicalPath().startsWith(destDir.getCanonicalPath())){
					throw new IOException("File in zip archive would be extracted outside of target directory: "+entry.getName());
				}
				
				if (entry.isDirectory()){
					if (!destFile.isDirectory() && !destFile.mkdirs()){
						throw new IOException("Failed to create new directory " + destFile.getAbsolutePath());
					}
				}
				else{
					File parent = destFile.getParentFile();
					if (!parent.isDirectory() && !parent.mkdirs()){
						throw new IOException("Failed to create new directory " + parent.getAbsolutePath());
					}
					FileOutputStream fos = new FileOutputStream(destFile);
					int bufferLength;
					while ((bufferLength = zis.read(buffer)) > 0){
						fos.write(buffer, 0, bufferLength);
						fos.flush();
					}
					fos.close();
					schemaPaths.add(destFile.getAbsolutePath());
					schemaFiles.add(destFile.getName());
				}
				zis.closeEntry();
				entry = zis.getNextEntry();
			}		
			output.setSchemaFiles(schemaFiles.toArray(new String[schemaFiles.size()]));
			output.setSchemaPaths(schemaPaths.toArray(new String[schemaPaths.size()]));
			zis.closeEntry();
			zis.close();
		} catch (IOException e) {
			throw new ServiceException("Failed to extract XOEV xsd package: "+e.getMessage());
		}
		finally{
			if (logWriter != null){
				try {
					logWriter.close();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		// --- <<IS-END>> ---

                
	}

	// --- <<IS-START-SHARED>> ---
	private static class UnzipSchemaPackageToLocalFSInput{
		
		private IDataMap plMap;
		
		public UnzipSchemaPackageToLocalFSInput(IData pipeline){
			this.plMap = new IDataMap(pipeline);
		}
		
		public ZipInputStream getSchemaPackageZippedStream(){
			return new ZipInputStream ((InputStream) plMap.get("schemaPackageZippedStream"));
		}
	};
	
	
	private static class UnzipSchemaPackageToLocalFSOutput{
		
		private IDataMap plMap;
		
		public UnzipSchemaPackageToLocalFSOutput(IData pipeline){
			this.plMap = new IDataMap(pipeline);
		}
		
		public String[] getSchemaFiles(){
			return plMap.getAsStringArray("schemaFiles");
		}
		
		public void setSchemaFiles(String[] schemaFiles){
			plMap.put("schemaFiles", schemaFiles);
		}
		
		public String[] getSchemaPaths(){
			return plMap.getAsStringArray("schemaPaths");
		}
		
		public void setSchemaPaths(String[] schemaPaths){
			plMap.put("schemaPaths", schemaPaths);
		}
		
		public void setSchemaTmpDir(String schemaTmpDir){
			plMap.put("schemaTmpDir", schemaTmpDir);
		}
		
		public String getSchemaTmpDir(){
			return plMap.getAsString("schemaTmpDir", "");
		}
	};	
	// --- <<IS-END-SHARED>> ---
}

