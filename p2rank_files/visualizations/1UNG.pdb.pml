
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
        
        load "data/1UNG.pdb", protein
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
 
        load "data/1UNG.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [6331,6332,6084,6086,6389,6391,6353,6354,6390,5967,5974,5999,6000,5995,5996,6052,6074,6077,6081,6322,6325,5970,6152,6155,5929,5946,6118,6126,6124,6129,6128,5935,5945,5932,5934,5942,6080,6088,6093,6089,6096,6094,6157,6160,6162,6188,6189,6221,6295,6324,5937,6213,6220,6494,6333,6493,6505,6507,6495,6461,6472,6055,6002,6043] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [2860,2867,2871,2874,2409,2410,2411,2392,2407,2408,2844,2847,2842,2427,2456,2414,2415,3257,2823,3229,3336,3242,2471,2473,3341,3344,3337,2580,3338,2827,2688,2818,2819,2821,3258,2687] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [241,1148,118,120,85,86,1034,1149,676,677,679,228,1062,119,652,90,1063,1141,493,627,626,628,623,624,625,622] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [4908,4910,1229,4909,1225,1228,4875,4884,4928,4930,5237,5238,4929,1247,1245,1231,1235,1242,4886,4889,4891,4876,4879,5231,5235,4862,5222,1186] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [2472,2473,3343,3344,2581,2490,2491,2553,2526,2528,3357,2549,2550,2547,3366] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [1443,1444,908,910,932,935,2196,2204,2187,2190,2191,2192,2197,2201,930,931,938,939,942] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [6221,6295,6296,5936,5937,6227,6220,6222,6268,5873,6250,6239,5935,5932,5934,5933,6269] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [3609,3610,3615,3616,4343,4344,3611,4352,4015,4016,3561,3597,4048] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1793,2165,2127,2129,2136,2130,2134,2135,1738,1739,1740,2116,1947,2091,2092,2095,1790,1755,1794,1758,1759,1754,1746,1745] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [4324,3989,3933,4286,4311,4322,4325,4331,4330,4329,3988,3941,3950,3953,4360,3987,3985,3986,3935,3934] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [1821,1402,1415,1803,1806,1853,2157,2149,2143] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        