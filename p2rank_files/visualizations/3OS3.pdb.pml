
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
        
        load "data/3OS3.pdb", protein
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
 
        load "data/3OS3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [997,999,1009,1144,1145,1152,1161,1010,1011,1012,1142,1147,1148,1143,1153,627,270,1149,268,286,445,516,1158,446,1159,1160,131,1262,1265,1246,1245,124,127,128,136,137,1228,284,1165,1172,1196,1198,1170,1226,285,1162,1000,1204,1200,1225,1224,1137,1140,1048,1131,517,1027,1041,1267,1028,1302,118,121,1270,626,640,641,638,1313,1306,1312,1294,1298,1300,1311,1293,1277,1279,1280,1281,1288,1289,1292] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.616,0.278,0.702]
select surf_pocket2, protein and id [1141,1065,1064,1040,1039,1048,1041,115,117,118,1147,1148,270,1149,269,689,690,713,714,715,682,683,684,152,153,112,113,641,250,645,107,109,110,106,661,664,665] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.361]
select surf_pocket3, protein and id [55,33,34,53,54,71,75,77,78,79,257,258,277,179,160,278,602,259,601] 
set surface_color,  pcol3, surf_pocket3 
   
        
        deselect
        
        orient
        