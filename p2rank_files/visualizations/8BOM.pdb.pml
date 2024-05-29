
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
        
        load "data/8BOM.pdb", protein
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
 
        load "data/8BOM.pdb_points.pdb.gz", points
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
select surf_pocket1, protein and id [2455,2465,2468,2469,2470,2471,2472,2467,858,876,1041,1393,1360,2442,2443,2452,2473,2474,2456,2457,1039,2093,1999,936,938,2277,2278,2124,2459,2092,2094,331,543,330,512,513,514,1348,877,878,1311,1349,1308,539,545,546,824,825,826,828,821,1382,1396,1378,1380,228,245,229,232,251,254,1440,1446,1450] 
set surface_color,  pcol1, surf_pocket1 
set_color pcol2 = [0.416,0.278,0.702]
select surf_pocket2, protein and id [2345,2382,985,1807,2392,1803,2360,2377,1000,1001,1879,1880,983,2381,1920,1796,1797,1801,1795,1858,1862,1861,1863] 
set surface_color,  pcol2, surf_pocket2 
set_color pcol3 = [0.902,0.361,0.878]
select surf_pocket3, protein and id [2808,2015,2804,2806,2802,2820,2798,2789,2788,2790,2016,4003,2028,3975,3978,3980,3981,3982,3996,4000,4016,2860,3963,2824,3884,3885] 
set surface_color,  pcol3, surf_pocket3 
set_color pcol4 = [0.702,0.278,0.380]
select surf_pocket4, protein and id [3529,4370,4372,3517,3205,3207,4416,3106,3541,3554,3564,4385,3204] 
set surface_color,  pcol4, surf_pocket4 
set_color pcol5 = [0.902,0.620,0.361]
select surf_pocket5, protein and id [3450,3468,3451,3452,3370,3518,3206,3208,3494,3500,3470,3471,3176,3241,3178,3240,3181,3242] 
set surface_color,  pcol5, surf_pocket5 
   
        
        deselect
        
        orient
        