
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
        
        load "data/2BAJ.pdb", protein
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
 
        load "data/2BAJ.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1288,1278,1292,1294,1296,1297,258,575,1282,686,688,610,609,1198,883,886,888,896,405,410,847,846,864,402,699,881,261,308,259,260,414,416,868,1277,1281,1287,1275,907,898,897,900] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [1335,1333,563,564,1071,636,1109,602,1273,1279,1283,1284,1272,1286,1073,1126,1072,1114,1120,1122,1137,679,574,561,571,562,1299,533,534,500,575,1282,687,573,608,610,568,572,599,600,601] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [19,20,62,63,200,202,359,78,90,182,183,35,735,738,79,36,16,18,741,2665,725,728,714,716,715,720,2676,2679,2654,2675,2656,2695,2696] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [1285,1335,1313,1314,1382,1381,1184,1185,1163,1147,1164,1334,1367,1298,1299,1302,1310,1306,1308,1291,1292,1294] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [696,2701,2702,872,873,874,707,658,1261,1262,633,647,650,690,662,643] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1968,1956,1965,1967,1927,1902,1930,1507,1509,1510,1517,1518] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [1003,1004,1029,1030,2409,2413,968,1242,1243,1245,966,1002,994,2365,2367,2364,673] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [913,975,909,1640,939,941,1205,1203,1204,903,1236] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        