
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
        
        load "data/7DUA.pdb", protein
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
 
        load "data/7DUA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [1263,1264,797,801,802,784,793,794,771,823,864,174,167,168,169,227,228,229,171,172,362,770,767,1247,1345,1233,1340,1339,205,206,207,208,209,376,374,745,729,744,544,623,625,749,378,510,1341] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [3203,3563,3564,2570,2630,3176,3200,3173,2571,2573,2574,2611,2609,2631,2576,2629,2575,3177,3199,2776,2778,3151,3150,3133,3135,2764,3645,3641,3640,2780,2923,2924,2925,3639,2958,3547,3207,3208,3533,2608,2610,2606,2607] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2594,2601,2602,2608,2605,3720,3741,3742,3536,3537,3547,3510,2599,2592,2596,2595,3725,2894,3669,3670,3671,2891,3661,3511,3648,3647,2779,2780,2924,2604,417,420,403] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [1519,3704,3709,1480,1201,1390,1391,1462,1464,1478,466,1392,1520,479,1371] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [450,1520,446,477,480,1369,1370,1361,196,198,1211,194,1516,1515,192,193,199,200,206,1348,202,448,378,511,1347] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2412,2414,3084,2419,2459,2935,2936,2476,2461,2438,2439,2445,2420,2421,3072,2457,2469,2968,2409,2417] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [2073,2045,2049,2050,2076,2325,2323,2067,1020,2322,990,991,992] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [2237,2238,2235,2236,1672,1674,1681,1682,1673,1160,1446,1680,1445,1133,1104,1143,2242,2245,1134,2249,2253] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1713,1714,1716,1983,2153,2154,2155,2156,2157,2158,1849,1988,1978,1981] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        