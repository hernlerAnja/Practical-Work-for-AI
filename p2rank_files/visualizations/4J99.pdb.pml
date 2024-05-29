
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
        
        load "data/4J99.pdb", protein
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
 
        load "data/4J99.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2447,2448,2449,2441,2442,2443,2446,2612,2452,2464,2608,2609,2610,2611,2613,2746,2407,2408,2411,2413,2414,2415,2462,2463,3485,3470,3564,3567,3569,3570,3562,3563,3578,3583,3585,3022,3025,3456,3015,3018,3486,2778,2972,2410,2596,2988,2990,2855,2997,2994,2779,2425,2426,202,203,467,2429,2433,2438,2690,1414,2683,2711,2713,3742,3743,3434,3727,3591,3592,3593,468,442,3728,430,3459,3460,2616] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.333,0.702]
select surf_pocket2, protein and id [373,753,757,636,1200,1201,806,523,1277,1278,1279,1282,1283,1285,1185,1284,769,181,775,176,178,180,778,177,752,796,799,1180,1171,232,233,234,385,387,388,389,737,185,183,184,217,218,195,216,196,199,204,215,211,203,182] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.443,0.361,0.902]
select surf_pocket3, protein and id [211,203,208,467,2432,457,459,1412,1413,1414,196,199,204,213,389,487,488,489,490,1306,1149,1307,1308,1409,1410,2665,1148,1430,1284,1298,1299,1300,1301,1322,1283,1285,1174,1185,2653,2649,1173] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.463,0.278,0.702]
select surf_pocket4, protein and id [7267,7268,7401,8153,8154,8054,8055,8152,4964,8043,8044,7085,7101,7102,7089,7090,7092,7093,7094,7374,7376,7095,7097,7099,7100,4753,7364,7366,7367,7369,8175,8177,8018,8176,8282,8297,8298,8167,8168,8169,4976,4960,7081,7082,7120,7104] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.741,0.361,0.902]
select surf_pocket5, protein and id [4746,4747,5881,5885,4777,4779,4778,4919,5287,5291,4907,5776,5781,5879,5796,5873,5874,5170,4922,4923,5057,4921,5089,5271,5286,5875,5333,5340,4732,5337,5767,5797,5330,4733,4736,5312,5795,5309,4735,4738,4739,4740] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.694,0.278,0.702]
select surf_pocket6, protein and id [7066,7067,7062,7063,7064,7069,7070,7071,7118,7119,7120,7657,7674,7675,7678,7685,8068,8069,8070,7252,7648,7632,7636,7515,7654,7400,7402,7266,7267,7268,8146,8147,8148,8151,8154,8040,8054,7434,7435,7616,7631,7264,7399] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.757]
select surf_pocket7, protein and id [6040,5900,5901,5883,4922,4923,5056,5899,7321,4755,4759,5022,5024,4757,4758,4760,5021,5908,5745,5907,5909,5902,6056,4746,4747,5885,4750,4754,4779,7309,4763,5770,5771,6055,4739,4740] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.278,0.475]
select surf_pocket8, protein and id [6563,3117,5489,6556,6564,6562,6555,3193,6336,6337,5452,5512,6347,6346,4245,4246,5432,5433,5508,3137,3174,4034,4252,4254,4253] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.361,0.459]
select surf_pocket9, protein and id [1447,1767,1768,1773,1774,1780,2929,2930,1761,1762,1763,1764,1765,2624,2619,2625,2627,2621,1786,2631,2632,2928] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.318,0.278]
select surf_pocket10, protein and id [4437,4441,3881,3885,3888,3898,3364,3890,4448,4434,4435,4436,3362,3363,3365,3336,3334,4452] 
set surface_color,  pcol10, surf_pocket10 
set_color pcol11 = [0.902,0.561,0.361]
select surf_pocket11, protein and id [8971,8974,8976,8977,8988,8992,8444,7947,7948,8431,8434,8984,8981] 
set surface_color,  pcol11, surf_pocket11 
set_color pcol12 = [0.702,0.553,0.278]
select surf_pocket12, protein and id [6245,6672,6673,6671,6674,6510,6515,6380,6527,6520] 
set surface_color,  pcol12, surf_pocket12 
set_color pcol13 = [0.902,0.859,0.361]
select surf_pocket13, protein and id [4205,3932,4070,4361,4364,4192] 
set surface_color,  pcol13, surf_pocket13 
   
        
        deselect
        
        orient
        