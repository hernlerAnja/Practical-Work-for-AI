
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
        
        load "data/1IR3.pdb", protein
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
 
        load "data/1IR3.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [512,1279,1280,1283,1284,1285,1286,1299,376,203,204,214,199,469,717,718,374,485,1173,1187,1202,1174,1200,1201,769,793,189,196,186,232,233,234,360,178,180,183,722,736,741,740,760,739,181,176,177,2389,2391,2393,2394,1176,1177,2383,2390,2392,1151,1188,1453,1456,1457,474,475,476,1450,445,1459,1300,1302,1141,1307,1308,1309,472,473,434,435,1301,1325,1414] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.329,0.278,0.702]
select surf_pocket2, protein and id [1015,1229,1232,1235,1249,1250,595,583,584,585,2299,2264,2265,988,2298,985,986,1236,1228,1237,2247,2248,2249,2251,2252,2250] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.698,0.361,0.902]
select surf_pocket3, protein and id [484,486,388,389,390,686,688,687,517,547,546,703,647,646,52,452,488,494,454] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.639]
select surf_pocket4, protein and id [582,584,726,1265,1266,1214,1224,1230,1231,1232,728,731,341,1222,616,720,723,298,337] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.545]
select surf_pocket5, protein and id [996,1236,959,1239,1237,1238,1240,803,804,960,907,961,963] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.353,0.278]
select surf_pocket6, protein and id [2302,2306,2307,1060,2312,2356,2296,2342,2343,571,566,576,569] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.729,0.361]
select surf_pocket7, protein and id [1603,1609,1081,1379,1380,1381,2142,1594,1343,2098,2106,2109,1596] 
set surface_color,  pcol7, surf_pocket7 
   
        
        deselect
        
        orient
        