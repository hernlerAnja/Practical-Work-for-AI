
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
        
        load "data/4JG7.pdb", protein
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
 
        load "data/4JG7.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2343,2346,2347,2349,2087,619,621,378,1291,1292,601,593,344,350,353,377,602,337,340,331,317,814,880,2336,2120,1366,1339,1334,1337,1338,2073,2335,2342,1043,1042,1303] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2845,2830,2831,2832,2833,1981,1982,1980,1983,2899,2875,2877,2880,2882,4470,4472,4512,4531,4532,4510,1984,2802,2876,2878,2879,4513,3351,3348,3759,4509,2783,2785,3789,2784,3841,3741,3757,2015,2003,2004,2009] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2856,3860,3890,3894,3877,3880,3882,2579,2580,1885,2810,2811,2818,2819,1881,1883,2812,1880,3904,3881,1950,2754,2822,2771,2769,1823,1825,1879,1895,1896,1827] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [3420,3421,3458,3459,3464,3465,3498,3500,3115,3161,3162,3163,3083,3084,3085,3086,3087,3479,3471,3475,3477] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [2235,2211,2209,1674,1568,1634,1523,2234,1461,1459,2143,1524] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        