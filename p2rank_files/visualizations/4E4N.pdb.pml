
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
        
        load "data/4E4N.pdb", protein
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
 
        load "data/4E4N.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3139,3475,3138,3140,3484,2529,3489,3590,2589,2591,2590,2528,2535,2536,2537,2530,2538,2722,3504,3505,3582,3583,3064,2533,3082,2532,3080,3107,3110,3114,3085,3088,3068,3075,3096] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [3612,3613,3453,3605,3606,3614,3604,2547,2548,2574,2575,2576,2572,2573,2742,2804,2752,2780,3478,2540,3480,3452,2538,3489,3589,3590,3591,2737,2738,2591,2536,2537,2841,3775,2783,2785,2807,3748,3772,3771,2551,2561,2567,2569,2565,2781] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [1284,1206,1205,789,786,240,241,783,785,1176,243,237,238,765,430,769,1291,299,298,811,815,841,797,808,1190] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [269,278,256,259,1473,1476,483,273,276,280,460,443,445,446,541,1291,1290,450,281,282,283,284,285,1179,255,504,508,509,512,1314,1315,1292,1305,1307,1472,1190,1154,1181,507,1447,1449,1448] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1573,1574,1575,2008,4274,4307,3873,4273,3872,1974,1975,2007,1983,4282,4244,4248,4247,1976,1945,1950,4246] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1669,1699,2196,2192,2194,1847] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        