
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
        
        load "data/6G9H.pdb", protein
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
 
        load "data/6G9H.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [487,488,340,773,323,604,778,789,194,198,199,200,201,202,203,204,224,223,170,171,1302,1304,1306,1303,450,451,1289,452,338,339,355,357,195,446,447,455,456,448,460,485,1165,1186,1177,1281,1282,1283,1287,1288,1290,1166,1178,1179,795,1202,810,811,1203,791,794,822,850,851,1149,1311,1312,1313] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [1607,2346,1382,2347,2357,2340,2348,2356,2358,1979,1980,1623,1535,1576,1575,1569,1570,1987,1989,1390,1955,2332,2339,1608,1379,1384,1387,1606,1353] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [512,514,1317,471,1330,502,504,2624,2625,467,469,2628,2716,474,438,475,476,478,1325,1334,1336,2615,2616,2617,2620,2622,2623,1320] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1505,1488,1491,1493,1503,1173,838,840,1714,1164,1174,1166,1178,1179,1469] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [965,967,1005,2500,2502,1031,998,997,1032,2545,2497,582,589,1033,1250] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        