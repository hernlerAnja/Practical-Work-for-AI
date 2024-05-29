
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
        
        load "data/4BID.pdb", protein
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
 
        load "data/4BID.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [193,296,627,634,638,642,645,646,145,147,148,490,1068,620,374,311,604,622,192,309,600,602,603,155,156,162,163,194,150,153,668,669,664,143,144,149,1173,313,1053,1154,1157,1158,1159,1160,1153,1152,1151,1042,1069,661,1164,372,373,1163,404,406,408,380,1172] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2620,2180,2181,2182,2284,2603,2297,2299,2627,2135,2638,2300,2301,3156,3157,3158,2151,2382,3151,3152,2131,2133,2137,2138,2141,2622,3066,3149,3150,3040,3067,2132,2136,2642,2645,2668,2661,2664,2656] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2427,2428,2429,2430,2432,2431,1385,1861,1859,1864,1860,1880,1869,1870,1871,1865,1378,1379,1380,1897,1898,1911,1333,1334,1335,3196,1862,2958,2961,2979,1368,1301,1350,1353,1354,1355,1356,1332,1369,1372,1376,1377,1381] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [813,788,812,846,847,737,738,739,740,742,1090,1089,833,835,763] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [3860,3870,3873,3877,3871,3365,3370,3371,3374,3836,2953,3891,3874,3878,2943,3367,3369,2941] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [1897,955,1899,1911,1378,1380,943,945,1903] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        