
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
        
        load "data/6EGE.pdb", protein
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
 
        load "data/6EGE.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4884,4885,4890,4891,4867,4868,4869,4870,4883,6574,6575,6620,5857,5858,5909,5908,6778,6779,6789,6587,6621,5577,5578,6619,6791,5171,5748,5750,5752,5753,4941,5169,4966,4967,4968,5167,4775,4872,4873,5007,5789,5790,5804,5821,5846,5847,4774,4776,6005,5922,5141,5747,5767,5801,5805,5806,4912,4892,4893,4905,4906,6546,4919,4923,4939,4942,4925,6792,6512,6545] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [1493,2309,473,1490,1478,1479,2310,2308,1211,2468,497,2263,488,494,533,570,571,572,471,2480,773,1439,1441,474,476,477,379,1437,1436,745,510,532,1546,1523,1535,1536,1597,1611,1510,1579,2264,1547,1598] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [2818,2911,2832,2835,4131,4133,4134,7589,7619,4110,4092,4105,4108,4126,4148,4152,4155,7743,7590,7601,7611,7689,2880,7690,7691,7692,7615,2662,2878,4112,7688,7742] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [6984,7493,6999,7390,6958,6544,6546,2691,4893,4906,7489,7504,7479,7499,7502,2707,2688,6980,6565,6571,6575,5890,5889] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [2506,2513,2518,2519,527,818,934,2507,2508,523,524,817,775,1001,2201,2477,2478] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [2200,2201,2481,497,2235,2263,527,523,530,510,516,517,532,533,2264] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [4925,6792,5300,6818,5297,5213,4923,5171,5214,5367,6791] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [1014,1015,1292,1,2,971,952,1318,1290,895] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [1938,1939,1972,1873,1875,1877,1163,1166,1180,2404,2403] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        