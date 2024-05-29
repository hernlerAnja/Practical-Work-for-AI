
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
        
        load "data/7A1B.pdb", protein
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
 
        load "data/7A1B.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3018,3019,3021,1366,3020,3014,3015,1102,2999,3001,1604,1605,1606,1925,1920,1921,1923,1938,2731,2733,2734,2748,2784,3002,2728,2782,2786,2011,1974,2697,773,774,2668,2667,3063,3317,3309,1275,3051,3052,1280,3064,3057,3062,2012,730,735,737,738,759,814,856,729,1142,1139,1100,1101,854,855,1065,1066,711,712,713,715,716,728,1922,1924,1067,760,766,771,772,788,1299,790,791,792,795,797] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.490,0.278,0.702]
select surf_pocket2, protein and id [3611,3642,3612,77,81,84,5404,3638,3621,3624,2533,5507,131,135,105,106,107,5499,5494,5497,5498,5517,5521,5523,2489] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.682]
select surf_pocket3, protein and id [397,398,355,417,377,382,362,364,3093,3094,3151,3190,3147,3149,3148,3150,3105,3191] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.408,0.278]
select surf_pocket4, protein and id [511,514,1300,509,456,473,1861,1729,1730,1321,1234,1320,1298,1301,1231,1232] 
set surface_color,  pcol4, surf_pocket4 
   
        
        deselect
        
        orient
        