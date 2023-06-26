package com.semi.jm.admin;

import com.dropbox.core.DbxException;
import com.dropbox.core.DbxRequestConfig;
import com.dropbox.core.v2.DbxClientV2;
import com.dropbox.core.v2.users.FullAccount;

public class Dropbox {
    private static final String ACCESS_TOKEN = "sl.Bg94l9Zc-tlYi78Ve3INu0J7DXbCEswXo_T_Z7_ZEQ2QXPPKaJmrlmSMMlBPrcMlBYgTz-pQdJLGuEXT3siMjWE3C7bhQ94ZccwKjj0xmxryv4Dp6rrBFHrRN_PlbHD5pD9Hs2g";

    public static void main(String args[]) throws DbxException {
        // Create Dropbox client
        DbxRequestConfig config = DbxRequestConfig.newBuilder("dropbox/java-tutorial").build();
        DbxClientV2 client = new DbxClientV2(config, ACCESS_TOKEN);
        
        FullAccount account = client.users().getCurrentAccount();
        System.out.println(account.getName().getDisplayName());
    }
}
