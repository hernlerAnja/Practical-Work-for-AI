
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
        
        load "data/4RQK.pdb", protein
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
 
        load "data/4RQK.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2332,2545,2546,2547,2548,2585,299,300,896,897,898,900,2586,325,327,326,2251,2282,2283,2871,2862,311,2859,902,2848,848,2314,2319,1591,1592,1594,588,1210,1211,1488,2532,2533,619,621,366,367,368,342,974,2574,895,894,913,2365,1536,1580,261,262,264,265,278,1504,1533,1520,2366] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.365,0.278,0.702]
select surf_pocket2, protein and id [2013,2014,2062,2063,2064,2072,2073,4381,4535,4585,4559,4536,1143,1156,1157,4603,4609,4611,1174,4589,1141,2076] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.792,0.361,0.902]
select surf_pocket3, protein and id [2497,2499,2401,2402,2404,1505,2411,1512,1515,2498,1152,1154,1155,1225,1227,1272,1502,1188,2415,2433] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.533]
select surf_pocket4, protein and id [2754,2755,2766,3111,4236,2767,3123,4229,3112,3159,4251,4252,4233,4235,4234,4122,4126,3056,3057,3091,4124,4138,3089] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.361]
select surf_pocket5, protein and id [1437,1419,1421,1422,986,988,1464,1465,990,1307,1308,1309,1319,1320,1345,1317,1318,916,918,867,935] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.533,0.278]
select surf_pocket6, protein and id [4592,4507,4494,4503,4518,4644,4508,1876,1877,4496,4687,1900,1902,4688,4657,1894,1895,1834,1898,1837] 
set surface_color,  pcol6, surf_pocket6 
   
        
        deselect
        
        orient
        