
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
        
        load "data/6YLK.pdb", protein
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
 
        load "data/6YLK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [994,984,991,1012,1013,1085,1086,1089,1090,1092,1084,269,1091,267,268,558,284,286,1139,157,252,265,556,104,591,589,593,596,432,437,438,439,363,365,454,456,457,345,346,571,572,388,362,611,612,613,620,604,156,158,100,106,107,109,111,112,102,101,133,119,129,131,132,143,144,118,1134,103,983,985,627,953,956,972,973,997,1088,1105,1108,1093,1096,1114,135,137,1127,1130,1099,366,1221,120,122,1195,1222,1240,126,127,1241] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [2111,1783,1784,1785,1792,1779,1741,1750,1755,1756,1757,1307,1375,2101,2102,1349,1374,1303,1304,1337,1340,1359,1370] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [643,644,679,1234,1229,1262,1526,1506,1507,1515,1516,672,979,1274,1481,988,669,1478,642] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [233,246,59,60,61,565,488,203,223,224,464,462,470] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        