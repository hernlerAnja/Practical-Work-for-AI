
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
        
        load "data/6YA8.pdb", protein
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
 
        load "data/6YA8.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [247,259,260,415,433,1311,271,273,413,233,234,237,221,222,224,1303,272,398,760,783,774,780,1195,764,219,805,776,215,806,244,248,249,250,251,252,253,254,461,490,491,1327,432,531,532,1325,747,562,746,759,494,496,460,1140,1155,1156,1312,1680,1169,1176,1309,1310,1167,1196,1304,1168,1334,1669,1672,1673,1675,1305,1306,1302,1333,1335] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [3241,3244,3246,3249,3250,3251,3253,3286,435,438,439,447,448,3277,714,715,725,3275,419,422,424,723,724,99,102,63,70,101,697,699,232,266,211,265,36,40,41,42,284,62,64,69,95,96,97,65,66,67,68,38,240,441,3129,3127,236,255,256,257,704,707,3355,3364,3274,3327,3322,3326] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [1814,1815,1818,2568,1840,2608,2603,2606,2607,2609,2613,2614,2618,2622,1804,1805,1806,1360,1066,1065,1067,1073,1038,1040,1809,1810,1812,1069] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [765,766,630,624,629,631,588,589,590,632,784,786,591,592,619,593,608,1289,1270,1276,787] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        