
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
        
        load "data/4J9H.pdb", protein
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
 
        load "data/4J9H.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [4686,3836,3972,3973,3974,3817,3819,3820,3822,3823,3845,4087,4660,5514,4814,4815,4928,4925,5366,4465,4467,4677,4661,4663] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.278,0.278,0.702]
select surf_pocket2, protein and id [4688,4689,4690,4692,4693,4691,5780,5767,4294,4296,5048,5768,5769,2036,4966,4967,4976,5013,5015,5017,4751,4752,4753,4968,4975,4687,3880,3897,3898,3910,3896,3846,3847,3849,3851] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.576,0.361,0.902]
select surf_pocket3, protein and id [5139,5121,5123,5168,5170,155,197,198,170,1166,1177,3382] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.616,0.278,0.702]
select surf_pocket4, protein and id [5338,2675,2677,2652,2655,961,1640,1641,2651,2874,1644,5794,5782,5781,5337,5350,2654,3356,982,984,5336,3300,3301,3335] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.361,0.792]
select surf_pocket5, protein and id [5916,5917,1675,1677,917,919,1710,1711,1629,2875,1630,1333,1334,1335,1679] 
set surface_color,  pcol5, surf_pocket5 
set_color pcol6 = [0.702,0.278,0.447]
select surf_pocket6, protein and id [5396,5379,5391,5392,5393,5394,5369,5370,5366,4725,3429,4727,3432,3803,3817,3819,3430,3423,3424,3422] 
set surface_color,  pcol6, surf_pocket6 
set_color pcol7 = [0.902,0.361,0.361]
select surf_pocket7, protein and id [317,320,5309,141,142,305,306,318,4242,4245,1030,5262,1057,1058,5264,5306,5325,5310,5311,1015] 
set surface_color,  pcol7, surf_pocket7 
set_color pcol8 = [0.702,0.447,0.278]
select surf_pocket8, protein and id [5749,5753,5755,2750,2751,2020,5706,5708,3092] 
set surface_color,  pcol8, surf_pocket8 
set_color pcol9 = [0.902,0.792,0.361]
select surf_pocket9, protein and id [5323,1644,5339,4763,4765,5942,1642,1643,1641,5281,5294,5320,5308,5296,1402,5429,5430,1405,1407,1395,1404,1400,1403,1630] 
set surface_color,  pcol9, surf_pocket9 
   
        
        deselect
        
        orient
        