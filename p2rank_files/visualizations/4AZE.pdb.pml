
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
        
        load "data/4AZE.pdb", protein
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
 
        load "data/4AZE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [5941,5946,5953,5972,6975,6974,6985,6597,6604,6632,6973,7001,5956,6631,5969,5971,5966,6120,7097,7098,7100,7099,6121,7090,7092,7093,6180,6182,6177,6239,6205,6206,6210,6211,7115,7113,7114,7116,6240,5940,5934,5990,5992,5935,5936,5938,5991,6582,6577,7002,6104,6570,6557,6571,6119,6550,6551,6552,6553,6547,6548,6549,7091,6406,6214,6943,6944,6945,6961,6962,7238,5960,5100,5101,5107,5099,5961,7190,7192,7120,7121,7227,7234,7224,7203] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [4123,4139,4140,4152,4121,4122,4163,4270,4272,3297,4271,3295,3296,3728,3730,3166,3167,3168,4402,4414,4151,4179,3775,3782,4180,3760,3114,3748,3752,3280,4153,4292,4286,4287,4288,4289,4293,3384,4285,3355,3383,3388,3389,3313,3417,4400,4403,4265,3731,3755,4262,4263,4264,3753,3726,3735,3749,3725,7920,7919,3132,7912,7918,3129,3145,3147,3148,3117,3119,3122,3809,3810,3116,3110,3111,3112,4156,3136,3137,3358,3360,3142] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [289,320,1458,283,285,339,341,340,453,287,902,904,905,1329,1341,1357,1448,1449,1450,929,900,901,909,899,938,956,984,934,1358,923,922,1330,1331,295,321,1451] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [8000,5182,7523,8035,8040,8029,8030,8036,8038,8041,4686,4687,4688,4692,8031,8034,7966,3864,5293,7999,7997,5183,4672,5226,5227,4673,5216,5221,5222,5224,5280,5282,5276,5279,5292,5294,5295,7510,7511,7512,5149,7496,7497,8090,8088,8093,7516,8109,8094,5217,5220,5180,6686] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [7618,8000,5182,7523,7543,7544,5138,4794,4795,4792,4719,4720,4685,4686,4687,4688,4692,4695,7619,7642,7643,7616,7998,7999,5183,5227,4699,7614,7940,4819,5181,7509,7510,7511,7512,7519,5146,5147,5148,5136,4818,5123,7516,7518] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [310,312,1473,315,529,557,558,562,591,486,563,566,1457,1472,1478,1479,1471,309,1300,1595,1600,1299,1301,1586,532,1565,1579,1584,1318,320,1458,1596,1588,1589] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [4736,4751,4752,4753,8538,8532,4755,4758,4760,4737,8499,4949,5126,5127,5128,4786,5139,5137,4785,5067,5065,5063,5071,5081] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [7773,7887,7889,7890,7891,7609,7945,7943,7944,7903,7954,8506,8525,7559,7560,7561,8512,7577,7575,7576,7956,7610,4729,4728] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1621,1619,1632,1633,1880,973,1836,971,1333,1334,1324,1316,1325,1317] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        