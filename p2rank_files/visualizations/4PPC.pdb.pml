
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
        
        load "data/4PPC.pdb", protein
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
 
        load "data/4PPC.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [245,2000,2001,2002,522,523,524,525,526,261,1969,546,548,1966,1968,528,403,946,1020,947,1021,553,584,552,576,577,580,1039,1040,527,1022,1023,1030,1027,1028,1029,330,1971,1964,1970,1965,918,932,585,607,532,549,401,418] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [107,108,110,141,142,2104,2389,2393,2417,2418,109,2387,143,2119,2120,2121,105,106,111,112,2263,2363,2364,2365,2366,2367,2368,2369,2390,2394,2425,2759,2787,2788,2421,2426,2862,2861,2864,2863,2868,2869,2870,2262,2880] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [221,222,224,228,2049,2063,542,223,229,432,534,535,538,541,429,431,2080,2081,2083,2066,2082,2062,188,190,2282,2284,2285,2286,207,204,2290,2268,2291,2269,2271,2288] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [2277,2369,2190,2366,2368,2273,2121,2881,2880,2260,2262,2871,2864,2863,2873] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1934,268,1935,1936,1932,502,450,471,473,476,485,487,488] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [77,2326,2343,75,58,2309,31,33,34] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [534,535,536,537,541,966,964,2271,377,378,1007,1008,2238,991,990,2222] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [1038,1039,1040,527,1022,330,401,418,328,353] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [2377,2382,2375,2234,2236,2848,2849,2831,2805,2807] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [2179,2180,2699,2700,2215,2877,2873,2161,2874,2188,2190,2157] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        