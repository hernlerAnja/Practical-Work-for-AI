
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
        
        load "data/7KHK.pdb", protein
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
 
        load "data/7KHK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [790,793,415,2702,785,2695,2663,680,788,1324,1325,2696,634,642,646,645,633,641,419,420,421,422,3070,2704,797,2699,2705,2709,1276,1280,1281,2710,2629,2643,649,1307,1308,3078,2708,2711,3075,3076,813,3461,3459,1275,3450,3451,3457,3458,3460,3089,3456] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.302,0.278,0.702]
select surf_pocket2, protein and id [434,310,311,1338,1339,1340,1346,805,262,1261,1260,259,260,265,266,312,271,1347,1230,263,827,830,836,834,835,671,672,779,780,802,558,559,448,450,560,277,285] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.631,0.361,0.902]
select surf_pocket3, protein and id [2574,2577,2573,2576,2579,2601,2599,2600,2731,3513,3514,2841,3515,3521,2735,2737,2739,2585,3520,3522,3109,3436,3117,3118,3119,3116,3405,3066,2953,2954,3061,3435,2722,3062,3044,3084,2723,3087] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.678,0.278,0.702]
select surf_pocket4, protein and id [4141,3987,3992,3994,3995,3996,4015,4134,3887,3885,3886,4259,4260,3918,3983,4004,3986,3911,3912,3914,3915,3916,3913] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.682]
select surf_pocket5, protein and id [2912,2902,2878,2453,2903,2904,2905,2906,2960,2962,2909,402,2966,399,392,398,2465,2466,387,2452,393,2963,2870,2967] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.341]
select surf_pocket6, protein and id [1672,2196,1635,1142,1636,1637,1141,2197,2208,2191,2194,1639] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.522,0.361]
select surf_pocket7, protein and id [3317,4339,3807,3822,4326,4329,4331,4332,4336,4343,3843,3315,3316,3810,3812,4347] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.596,0.278]
select surf_pocket8, protein and id [3204,3205,3208,3209,3210,3174,4187,3200,3946,3948,4166,4167] 
set surface_color,  pcol8, surf_pocket8 
   
        
        deselect
        
        orient
        