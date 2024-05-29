
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
        
        load "data/3VS5.pdb", protein
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
 
        load "data/3VS5.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [3297,3319,3320,3321,3323,3328,3317,3295,3296,6853,6854,3379,3141,3130,3131,3133,3163,3164,3165,3166,6755,6757,6624,3352,3417,3418,3349,599,3341,3344,598,6591,6593,786,3428,778,3433,6777,6779,6780,6781,6783,6787,6788,6741,6743,6744,3393,6812,6839,6809,3388,6601,3394,6590,6878,4255,4067,4068,6877,6746,6801,6804,4247,4248] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [2064,2068,2069,2433,2430,2438,1682,1684,2529,2530,2061,2093,2060,1514,1510,1511,1513,1516,1566,1565,1567,2042,2033,2035,2038,1668,2021,2016,2017,1667,1676,1680,1998,2001,1771,2002,2000,2041,2049,2454,2455,2540,1895,2522,2539,2541,1820,2523,2524,2552,1912,1913] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [4973,4974,5023,5024,5025,5138,5139,5140,5518,5551,4971,4967,4968,4969,5126,5474,5475,5125,5134,5459,5493,5495,5496,5499,5507,5491,5500,5912,5913,5353,5980,5981,5519,5522,5526,5527,5888,5987,5142] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [4136,4406,4409,4403,4405,4394,4400,4079,4099,4100,4101,6800,4107,4098,4414,4429,4431,5682,5685,5649,4385,4386,5650,6831,6792,5683,5684,5659,6811,6824,6827,6828,6841,6842,6868,6867,6873,6903,4418] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [2218,3340,3368,3369,3370,2193,3371,912,913,3332,3364,3367,916,2191,2192,2201,2226,2220,2221,2224,2225,2227,610,632,630,629,631,937,931,936,925,3381,665,667,638] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [2573,1730,2568,1733,1729,1731,1699,2551,1697,2549,2569,1710,1967,1696,1769,1766,1767,1980,1982,1975] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [632,630,629,631,960,962,937,931,936,940,599,3351,3408,3381,3382,3407,3413,950,951,667,3368] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [5433,5188,5189,5187,5155,5157,5154,5161,5191,5229,5226,5437,5438,5440,5203,5204,5422,6026,6024,6025,6029,6007,6009,6033,5227,5223,5224,5225,6010] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [5353,5980,5981,5982,5370,5371,6010,5278,5987,5459,5475,5140,5997,5999,5989,5992] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [4036,4121,4029,4031,3967,3968,4033,3966,4014,3982,3990,3991,3989,4777,3894,3520,3522,3534,4756,3519,3533,4778,4760,4752,4757,4755] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [1299,64,65,1297,1302,1319,1294,1298,567,584,560,562,563,497,513,520,521,522,51,54,526,498,501,53,425,545,564,568] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [1000,999,3456,1034,1035,1056,6552,6507,6508,3445,3449,3453,6555,6503,6521,997,998,1040] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [2887,3015,3025,3182,3184,3020,2888] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        