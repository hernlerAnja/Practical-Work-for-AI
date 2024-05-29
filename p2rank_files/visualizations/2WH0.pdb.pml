
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
        
        load "data/2WH0.pdb", protein
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
 
        load "data/2WH0.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4226,4604,4953,4572,4571,4577,4581,4573,4583,6777,6780,6781,6782,6775,3667,4234,3647,4197,4198,3693,3718,4267,4301,4302,4265,3696,3697,3748,3669,3674,4232,4233,4227,4256,4191,4195] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.298,0.702]
select surf_pocket2, protein and id [6808,6809,5877,6565,6807,6810,6197,6567,6542,6540,6198,6202,6206,5396,5884,5361,5876,5878,5363,5847,5849,5842,5338,5846,5848,5339,5340,5393,5394,5903,5912,5370] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.533,0.361,0.902]
select surf_pocket3, protein and id [1227,1194,1195,1200,1204,1196,840,1534,1536,1506,878,841,944,945,6697,6701,869,870,899,6699,6702,6700,908,876,1528,315,316,317,294,295,910,346,347] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.565,0.278,0.702]
select surf_pocket4, protein and id [6734,6736,6745,6741,6742,2537,2538,2917,6735,1959,2567,2576,2543,2544,6740,3280,2886,2896,2885,2511,1926,1927,2508,2510,2478,1990,1992,6730,6746,6747,6748,1931,1934,1937,6751,1988,1957,6743] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.878]
select surf_pocket5, protein and id [1399,1395,1242,1427,1424,1108,1110,1112,1397,1422,1420,1215,1140,1210,1212,1214,1135,1454,1426,1171] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.533]
select surf_pocket6, protein and id [4619,4479,4481,4480,4587,4589,4513,4591,4774,4778,4755,4776,4801,4803,4806,4548,4805,4602] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.490]
select surf_pocket7, protein and id [5925,5926,5891,6065,5780,5869,6040,6037,6060,6039,6094,6062,5853,5742,5719,5746,5747,5750] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.329,0.278]
select surf_pocket8, protein and id [574,576,1777,1805,1683,1682,1710,546,605,1779,1781,1775,1778,1780,1662,604] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.620,0.361]
select surf_pocket9, protein and id [3090,2932,2790,2792,3092,3115,3117,3119,3122,2900,2824,2902,2904,2915,3121,2861] 
set surface_color,  pcol9, surf_pocket9 
set_color pcol10 = [0.702,0.631,0.278]
select surf_pocket10, protein and id [3431,5492,5500,3451,5517,3421,3422,3428,3429,3432,5545,5546,5568,5490,5495,5573] 
set surface_color,  pcol10, surf_pocket10 
   
        
        deselect
        
        orient
        