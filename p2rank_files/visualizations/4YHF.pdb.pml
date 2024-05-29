
        from pymol import cmd,stored
        
        set depth_cue, 1
        set fog_start, 0.4
        
        set_color b_col, [36,36,85]
        set_color t_col, [10,10,10]
        set bg_rgb_bottom, b_col
        set bg_rgb_top, t_col      
        set bg_gradient
        
        set  spec_power  =  200
        set  spec_refl   =  0
        
        load "data/4YHF.pdb", protein
        create ligands, protein and organic
        select xlig, protein and organic
        delete xlig
        
        hide everything, all
        
        color white, elem c
        color bluewhite, protein
        #show_as cartoon, protein
        show surface, protein
        #set transparency, 0.15
        
        show sticks, ligands
        set stick_color, magenta
        
        
        
        
        # SAS points
 
        load "data/4YHF.pdb_points.pdb.gz", points
        hide nonbonded, points
        show nb_spheres, points
        set sphere_scale, 0.2, points
        cmd.spectrum("b", "green_red", selection="points", minimum=0, maximum=0.7)
        
        
        stored.list=[]
        cmd.iterate("(resn STP)","stored.list.append(resi)")    # read info about residues STP
        lastSTP=stored.list[-1] # get the index of the last residue
        hide lines, resn STP
        
        cmd.select("rest", "resn STP and resi 0")
        
        for my_index in range(1,int(lastSTP)+1): cmd.select("pocket"+str(my_index), "resn STP and resi "+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.show("spheres","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_scale","0.4","pocket"+str(my_index))
        for my_index in range(1,int(lastSTP)+1): cmd.set("sphere_transparency","0.1","pocket"+str(my_index))
        
        
        
        set_color pcol1 = [0.361,0.576,0.902]
select surf_pocket1, protein and id [287,288,289,465,221,1993,1091,1178,1992,1092,831,222,1121,1123,1136,1139,1156,1140,248,252,2159,2146,2152,2153,497,498,494,496,2158,866,2171,2173,2174,1054,2197,681,1237,1239,1166,1252,1254,1164,1165,1169,1170,1238,1314,1317,1349,1247,1372,1373,1374,1236,1189,1184,1188,1940,4361,4362,217,218,4353,4354,4067,4068,4352,4061,4066,4071,235,219,4080,4101] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [4174,4192,4193,4257,4258,4259,4199,4211,4212,5921,6119,4178,5149,5187,5188,5150,4175,4177,5194,5952,5953,4444,4445,4218,4446,6118,5166,5175,5199,5198,5891,5247,5249,5146,4413,5101,5102,5061,5062,4442,5064,5915,5916,5913,4862,4896,6133,6134,6106,6112,6132,4705,6113,6124] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [257,256,533,557,558,561,562,2194,2197,607,609,611,2198,2238,258,1016,578,605,606,608,610,2236,2237,563,495,496,530,1015,1055,556,581] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1255,1415,1473,1542,1468,1469,1470,1524,1369,1370,1372,1525,2067,2064,2065,2049,2050,1254,1170,1256] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [5512,6010,6025,6027,5265,5266,5443,6009,5375,5439,5438] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [6294,6175,6296,6173,6303,6305,6306,5816,5819,6182,6184,6371,6608,6605,6607,6609,6585,6586,6466] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [5892,5894,5230,6966,5229,6448,6849,5895,5896,6449,6366,6384,6962,6990,6420,6956,6960,7087] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [7008,6716,7193,7277,6713,6772,7581,7580] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        