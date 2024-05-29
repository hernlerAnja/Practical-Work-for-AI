
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
        
        load "data/4UMT.pdb", protein
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
 
        load "data/4UMT.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [540,541,1188,1106,1108,1194,1197,1199,1200,1221,1224,144,145,723,726,1107,462,674,660,1201,1204,1218,297,1220,299,1211,1212,150,461,1079,1195,139,187,141,133,134,135,137,679,282,697,691,693,672,673,675,295,188,171,715,700] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [547,567,569,2441,2453,2474,681,685,688,266,261,2469,2467,2470,2471,2445,682,683,684,510,502,512,546,548,550,1184,513,2095,2097,496,2473,2504,2505,2506,2497,1135,1136,1144,1146,1124,1127,1164] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [1021,1024,1026,1027,1030,1032,1205,1208,428,431,976,454,975,486,1010,1012,1190,1192,1195,1196,427,462,674,660,1201,1204,1218,1219,426,433,434,455,459,461,1194,534] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [1074,1075,741,743,745,1083,1084,773,738,770,772,775,779,1269,1271,1474,1475,1504,1519,1520,1521,1240,1241,1502] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [2113,2115,2110,466,473,478,492,2357,2353,2354,2355,2356,2350,2351,2352,2377,2379] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        