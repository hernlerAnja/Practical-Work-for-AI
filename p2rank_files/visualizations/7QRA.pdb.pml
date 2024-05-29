
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
        
        load "data/7QRA.pdb", protein
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
 
        load "data/7QRA.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [990,1115,1118,1020,1021,578,579,1117,232,597,602,120,139,141,245,247,248,566,140,110,111,610,453,454,605,1124,1123,352,385,1119,1120,386,249,622] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.310,0.702]
select surf_pocket2, protein and id [3344,3469,3471,3472,2494,2959,3374,3375,2964,2468,2467,2474,2493,2495,2920,2932,2933,2935,2602,2601,2599,2807,2808,2465,2956,2951,2586,3478,2603,3473,3474,3477,2706,2740,2739,2976] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.498,0.361,0.902]
select surf_pocket3, protein and id [1399,1400,2001,2003,1999,1849,2000,1407,1997,1998,6613,6636,1976,1553,6495,2008,2009,2015,1408,1818,1819,1815,1817,6069,6458,6652,6635,6045,6043,1808,1842,1846,1847,1831,1835,1836,1839,1858,6034,6035,6036,6160,6486,6637,6638,6640,6445,6454,6468,6452,6473,6476,6479,6487,6491,6044] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.525,0.278,0.702]
select surf_pocket4, protein and id [5315,5733,5830,5317,5297,5316,4849,4956,4953,4955,5278,5274,5291,4827,4828,4847,4848,4818,4819,4940,5309,5314,5311,4853,5835,5836,5837,5838,5702,4957,5064,5832,5096,5097,5098,5827,5829,5324,5334,5360,5732,5322,5321] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.851,0.361,0.902]
select surf_pocket5, protein and id [8320,8920,8921,8923,8919,8769,8735,8737,3786,8728,8751,4355,4330,8918,4357,4203,4353,4354,3753,3754,4172,4173,3751,4189,4190,4193,8328,8327,4212,4196,8935,4169,4171,8741,8352,8319,4185,4352,4362,4363,8896,4351,3760,3761,3762,8778,8756,8759,8762,8770,8775,8774,4200,4201] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.600]
select surf_pocket6, protein and id [8113,8112,7102,7592,7101,8118,8110,7111,7240,7381,7130,7131,7132,7223,7136,8119,8120,7347,7236,7557,7238,7561,7574,7580,7594,7576,7617,7985,8015,8016,7605,7607,7643,7600,7604,7597,7598] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.596]
select surf_pocket7, protein and id [2312,2314,2327,616,656,1026,1033,1065,1067,617,1041] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.325]
select surf_pocket8, protein and id [4666,4668,4681,2970,3010,2971,3387,3420,3421,3419,3380] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.478,0.361]
select surf_pocket9, protein and id [1788,1790,1791,1818,1821,1793,1795,4074,1792,1794,1826,6070,4054,4056,6398,6457,6423,6425,6432,6429,6430] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.510,0.278]
select surf_pocket10, protein and id [8061,8062,8021,8028,8060,7651,9232,9234,7611,8036,7612,9230,9247] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.831,0.361]
select surf_pocket11, protein and id [5329,5738,5745,5753,6951,5778,5779,5777,5368,5328,6949,6964] 
set surface_color,  pcol11, surf_pocket11 
   
        
        deselect
        
        orient
        